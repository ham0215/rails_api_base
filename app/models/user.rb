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
  validates :avatar, content_type: %i[png jpg jpeg], size: { less_than: 4.megabytes }

  def profile_loader
    AssociationLoader.for(User, :profile).load(self)
  end

  def portfolios_loader
    AssociationLoader.for(User, :sorted_portfolios).load(self)
  end

  def books_loader
    AssociationLoader.for(User, :sorted_books).load(self)
  end

  private

  def ng_name
    errors.add(:name, :ng_name) if name == 'NGNAME'
  end
end
