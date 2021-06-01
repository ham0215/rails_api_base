# frozen_string_literal: true

module Types
  class PortfolioType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
    field :url, String, null: false
  end
end
