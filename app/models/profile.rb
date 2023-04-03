# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  has_many :skills, dependent: :delete_all
end
