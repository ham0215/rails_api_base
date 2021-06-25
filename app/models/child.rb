# frozen_string_literal: true

class Child < ApplicationRecord
  belongs_to :parent

  after_create -> { parent.update!(status: 1) }
  after_destroy -> { parent.update!(status: 0) }
end
