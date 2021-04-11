# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'rails_api@hamchance.com'
  layout 'mailer'
end
