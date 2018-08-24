class ContactMailer < ApplicationMailer

  def contact_me(message)
      @body = message.body
      @sender = message.email
      @subject = message.subject

      mail (to: 'lacabanedemaii@gmail.com', from: @sender, subject: @subject)
  end
end
