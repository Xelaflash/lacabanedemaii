class ContactMailer < ApplicationMailer

  def contact_me(message)
      @body = message.body
      @sender = message.email
      @recipient = 'lacabanedemaii@gmail.com'
      @subject = message.subject

      mail (
        to: @recipient,
        from: @sender,
        subject: @subject
      )
  end
end
