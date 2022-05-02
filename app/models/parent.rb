# frozen_string_literal: true

class Parent < ApplicationRecord
  has_many :children, dependent: :restrict_with_exception
  has_many :set_null_children, dependent: :nullify
  has_many :cascade_children, dependent: :delete_all
end
