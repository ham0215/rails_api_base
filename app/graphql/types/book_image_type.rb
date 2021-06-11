# frozen_string_literal: true

module Types
  class BookImageType < Types::BaseObject
    field :id, Integer, null: false
    field :book, Types::BookType, null: false
    field :name, String, null: false
    field :path, String, null: false
    field :content_type, String, null: false
  end
end
