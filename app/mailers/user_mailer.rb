class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    @url  = 'https://lacabanedemaii.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenu à la Cabane de Maii')
  end
end
