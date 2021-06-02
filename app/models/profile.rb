# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  has_many :skills, dependent: :delete_all

  def skills_loader
    AssociationLoader.for(Profile, :skills).load(self)
  end
end
