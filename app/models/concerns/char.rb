# frozen_string_literal: true

module Char
  extend ActiveSupport::Concern

  included do
    has_one :character, as: :char, touch: true, dependent: :destroy
    delegate :name, to: :character
  end
end
