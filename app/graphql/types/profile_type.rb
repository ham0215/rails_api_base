# frozen_string_literal: true

module Types
  class ProfileType < Types::BaseObject
    field :id, Integer, null: false
    field :address, String, null: true
    field :skills, Types::SkillType.connection_type, null: false

    def skills
      dataloader.with(Sources::ActiveRecordObject, Profile, :skills).load(object.id)
    end
  end
end
