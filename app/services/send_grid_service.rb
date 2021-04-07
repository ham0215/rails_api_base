# frozen_string_literal: true

class SendGridService
  attr_reader :api_key

  def initialize(settings)
    @api_key = settings[:api_key]
  end

  def deliver!(mail)
  end
end
