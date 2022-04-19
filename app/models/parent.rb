# frozen_string_literal: true

class Parent < ApplicationRecord
  has_many :children
  has_many :set_null_children, dependent: :nullify
  has_many :cascade_children, dependent: :delete_all
end
