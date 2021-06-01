# frozen_string_literal: true

class Book < ApplicationRecord
  has_many :user_books, dependent: :deleta_all
end
