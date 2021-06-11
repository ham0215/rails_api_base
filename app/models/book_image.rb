# frozen_string_literal: true

class BookImage < ApplicationRecord
  belongs_to :book

  has_one_attached :file

  def name
    file.filename.to_s
  end

  def path
    return '' unless file.attached?

    Rails.application.routes.url_helpers.rails_storage_proxy_path(file, only_path: true)
  end

  def content_type
    return '' unless file.attached?

    file.content_type
  end
end
