# frozen_string_literal: true

module Types
  class SkillType < Types::BaseObject
    field :id, Integer, null: false
    field :name, String, null: false
  end
end
