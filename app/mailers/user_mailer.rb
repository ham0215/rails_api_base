# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def hello(user_id)
    @user = User.find user_id
    mail(to: user.email, subject: 'Hello!! ham!!' )
  end
end
