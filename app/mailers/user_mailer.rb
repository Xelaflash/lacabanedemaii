class UserMailer < ApplicationMailer


  def welcome(user)
    @user = user
    @url  = 'https://lacabanedemaii.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Bienvenu à la cabane de Maii')
  end
end
