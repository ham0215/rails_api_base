# frozen_string_literal: true

class User < ApplicationRecord
  enum locale: {
    en: 0,
    ja: 1,
  }

  has_one :profile, dependent: :destroy
  has_many :portfolios, dependent: :delete_all
  has_many :sorted_portfolios, -> { order(id: :desc) }, class_name: 'Portfolio', dependent: :delete_all
  has_many :user_books, dependent: :delete_all
  has_many :books, through: :user_books
  has_many :sorted_books, -> { order(id: :desc) }, through: :user_books, source: :book

  validates :name, presence: true
  validate :ng_name
  validates :locale, presence: true, inclusion: { in: locales.keys }

  has_one_attached :avatar
  validates :avatar, content_type: %i[png jpg jpeg], size: { less_than: 15.megabytes }

  def slow_field
    sleep(5)
    'slow_field'
  end

  def slow_field2
    sleep(5)
    'slow_field2'
  end

  class << self
    def save_selected_avatars(user_ids)
      Zip::OutputStream.open(Rails.root.join('tmp', 'avatars.zip')) do |out|
        where(id: user_ids).with_attached_avatar.each do |user|
          out.put_next_entry("#{user.id}_#{user.avatar.filename}")
          user.avatar.download { |chunk| out.write(chunk) }
        end
      end
    end

    def save_selected_avatars2(user_ids)
      buffer = Zip::OutputStream.write_buffer do |out|
        where(id: user_ids).each do |user|
          out.put_next_entry("#{user.id}_#{user.avatar.filename}")
          user.avatar.download { |chunk| out.write(chunk) }
        end
      end

      File.open(Rails.root.join('tmp', 'avatars.zip'), 'wb') { _1.write(buffer.string) }
    end

    def save_selected_avatars1(user_ids)
      # Active Storageのファイルをローカルにダウンロードする
      tmp_dir = Rails.root.join('tmp', 'avatars')
      FileUtils.mkdir_p(tmp_dir)
      where(id: user_ids).each do |user|
        File.open(tmp_dir.join("#{user.id}_#{user.avatar.filename}"), 'wb') do |file|
          user.avatar.download { |chunk| file.write(chunk) }
        end
      end

      # rubyzipを使ってZIPファイルを生成する
      Zip::File.open(Rails.root.join('tmp', 'avatars.zip'), create: true) do |zipfile|
        Dir.glob(tmp_dir.join('*')).each do |path|
          zipfile.add(File.basename(path), path)
        end
      end
    end
  end

  private

  def ng_name
    errors.add(:name, :ng_name) if name == 'NGNAME'
  end
end
