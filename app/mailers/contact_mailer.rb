class ContactMailer < ApplicationMailer

  def contact_me(message)
      @body = message.body
      @name = message.name
      @sender = message.email
      @recipient = 'lacabanedemaii@gmail.com'
      @subject = "Nouveau message reçu du site - Titre: #{message.subject} - De : #{@sender}"

      mail(
        to: @recipient,
        subject: @subject
      )
  end
end
