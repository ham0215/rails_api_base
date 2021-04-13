# frozen_string_literal: true

class User < ApplicationRecord
  enum locale: {
    en: 0,
    ja: 1,
  }

  validates :name, presence: true
  validate :ng_name
  validates :locale, presence: true, inclusion: { in: locales.keys }

  has_one_attached :avatar
  validates :avatar, content_type: %i[png jpg jpeg], size: { less_than: 4.megabytes }

  private

  def ng_name
    errors.add(:name, :ng_name) if name == 'NGNAME'
  end
end
