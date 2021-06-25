# frozen_string_literal: true

class Child < ApplicationRecord
  belongs_to :parent

  after_create -> { parent.status = 1 }
  after_destroy -> { parent.status = 0 }
end
