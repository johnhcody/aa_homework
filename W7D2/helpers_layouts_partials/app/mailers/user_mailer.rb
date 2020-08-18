class UserMailer < ApplicationMailer

  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url  = session_url
    mail(to: user.email, subject: 'Open this email right meow!')
  end

end
