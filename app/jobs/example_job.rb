# frozen_string_literal: true

class ExampleJob < ActiveJob::Base
  # Set the Queue as Default
  queue_as :default

  def perform
    Rails.logger.debug 'start job!!!!'
  end
end
