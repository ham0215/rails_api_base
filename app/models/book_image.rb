# frozen_string_literal: true

class BookImage < ApplicationRecord
  belongs_to :book

  has_one_attached :file
end
