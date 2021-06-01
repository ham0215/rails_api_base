# frozen_string_literal: true

module Types
  class BookType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
  end
end
