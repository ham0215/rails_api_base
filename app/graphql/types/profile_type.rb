# frozen_string_literal: true

module Types
  class ProfileType < Types::BaseObject
    field :id, Integer, null: false
    field :address, String, null: true
  end
end
