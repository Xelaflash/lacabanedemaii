class ContactMailer < ApplicationMailer

  def contact_me(message)
      @body = message.body
      @name = message.name
      @sender = message.email
      @title = message.subject
      @subject = "Nouveau message reçu du site - Titre: #{@title} - De : #{@sender}"
      @recipient = 'lacabanedemaii@gmail.com'
      mail(
        to: @recipient,
        subject: @subject
      )
  end
end
