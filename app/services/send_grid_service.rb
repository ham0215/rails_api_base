# frozen_string_literal: true

class SendGridService
  attr_reader :api_key

  def initialize(settings)
    @api_key = settings[:api_key]
  end

  def deliver!(mail)
    sg_mail = SendGrid::Mail.new
    sg_mail.from = SendGrid::Email.new(email: mail.from.first)
    sg_mail.to = SendGrid::Email.new(email: mail.to.first)
    sg_mail.subject = mail.subject

    # html & text
    sg_mail.add_content(SendGrid::Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby'))
=begin
    mail.body.parts.each do
      content_type = "#{_1.main_type}/#{_1.sub_type}"
      sg_mail.add_content(SendGrid::Content.new(type: content_type, value: _1.body.raw_source))
    end
=end

    sg = SendGrid::API.new(api_key: api_key)
    response = sg.client.mail._('send').post(request_body: sg_mail.to_json)
    byebug
    # エラー処理
    raise response.inspect if response.status_code.to_i >= 300
    response.body
  end
end
