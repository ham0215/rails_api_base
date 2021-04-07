# frozen_string_literal: true

class SendGridService
  attr_reader :api_key

  def initialize(settings)
    @api_key = settings[:api_key]
  end

  def deliver!(mail)
    from = SendGrid::Email.new(email: 'test@example.com')
    to = SendGrid::Email.new(email: 'test@example.com')
    subject = mail.subject
    content = SendGrid::Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    sg_mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: api_key)
    response = sg.client.mail._('send').post(request_body: sg_mail.to_json)
  end
end
