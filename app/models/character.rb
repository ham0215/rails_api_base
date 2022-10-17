# frozen_string_literal: true

class Character < ApplicationRecord
  delegated_type :char, types: %w[Human Droid], dependent: :destroy
end
