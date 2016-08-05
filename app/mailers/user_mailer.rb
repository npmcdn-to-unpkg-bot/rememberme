class UserMailer < ApplicationMailer
  default from: 'admin@belltollsfor.me'

  def welcome_email(user)
    @user = user
    @url  = 'http://www.belltollsfor.me/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
