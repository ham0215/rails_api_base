# frozen_string_literal: true

class User < ApplicationRecord
  enum locale: {
    en: 0,
    ja: 1,
  }

  validates :name, presence: true
  validate :ng_name
  validates :locale, presence: true, inclusion: { in: locales.keys }

  private

  def ng_name
    errors.add(:name, 'にNGNAMEは使えません') if name == 'NGNAME'
  end
end
