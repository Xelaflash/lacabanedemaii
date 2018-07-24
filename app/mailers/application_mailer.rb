class ApplicationMailer < ActionMailer::Base
  # default from: 'from@example.com'
  # layout 'mailer'
  def contact_me(message)
    @body = message.body
    mail to: "lacabanedemaii.website@gmail.com", from: message.email
  end
end
