class ApplicationMailer < ActionMailer::Base
  default from: 'contact@lacabanedemaii.com'
  layout 'mailer'

  class TestMailer < ActionMailer::Base
    def message
      mail(
        :subject => 'Hello from Postmark',
        :to  => 'contact@lacabanedemaii.com',
        :from => 'contact@lacabanedemaii.com',
        :html_body => '<strong>Hello</strong> dear Postmark user.',
        :track_opens => 'true')
    end
  end
end
