# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def hello
    mail(to: 'to@example.com', subject: 'Hello!! ham!!' )
  end
end
