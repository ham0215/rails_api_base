# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validate :ng_name

  private

  def ng_name
    errors.add(:name, 'にhamは使えません') if name == 'ham'
  end
end
