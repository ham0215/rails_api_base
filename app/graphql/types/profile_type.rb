# frozen_string_literal: true

module Types
  class ProfileType < Types::BaseObject
    field :id, Integer, null: false
    field :address, String, null: true
    field :skills, Types::SkillType.connection_type, null: false

    def skills
      AssociationLoader.for(Profile, :skills).load(object)
    end
  end
end
