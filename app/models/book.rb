# frozen_string_literal: true

class Book < ApplicationRecord
  has_many :user_books, dependent: :delete_all
  has_one :book_image, dependent: :destroy
end
