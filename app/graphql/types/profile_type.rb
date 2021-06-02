# frozen_string_literal: true

module Types
  class ProfileType < Types::BaseObject
    field :id, Integer, null: false
    field :address, String, null: true
    field :skills, Types::SkillType.connection_type, null: false

    def skills
      BatchLoader::GraphQL.for(object.id).batch(default_value: []) do |profile_ids, loader|
        Skill.where(profile_id: profile_ids).each do |skill|
          loader.call(skill.profile_id) { _1 << skill }
        end
      end
    end
  end
end
