# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validate :ng_name

  private

  def ng_name
    return unless name == 'ham'

    errors.add :name, 'hamは使えません'
  end
end
