# frozen_string_literal: true

class SendGridService
  attr_reader :api_key, :mail

  def initialize(settings)
    @api_key = settings[:api_key]
  end

  def deliver!(mail)
    @mail = mail
    sg = SendGrid::API.new(api_key:)
    response = sg.client.mail._('send').post(request_body:)
    raise response.inspect if response.status_code.to_i >= 300

    response.body
  end

  private

  def request_body
    sg_mail = SendGrid::Mail.new
    sg_mail.from = SendGrid::Email.new(email: mail.from.first)
    personalization = SendGrid::Personalization.new
    mail.to.each { personalization.add_to(SendGrid::Email.new(email: _1)) }
    sg_mail.add_personalization(personalization)
    sg_mail.subject = mail.subject

    mail.body.parts.each do
      content_type = "#{_1.main_type}/#{_1.sub_type}"
      sg_mail.add_content(SendGrid::Content.new(type: content_type, value: _1.body.raw_source))
    end

    sg_mail.to_json
  end
end
