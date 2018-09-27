class EmailInterceptor
  def self.delivering_email(message)
    message.subject = "test sending real email to #{message.to}"
    message.to = [ 'contact@lacabanedemaii.com' ]
  end
end
