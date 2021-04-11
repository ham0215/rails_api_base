Rails.configuration.to_prepare {
  ActionMailer::Base.add_delivery_method(:sendgrid,
                                         SendGridService,
                                         api_key: Rails.application.credentials.sendgrid_api_key)
}
