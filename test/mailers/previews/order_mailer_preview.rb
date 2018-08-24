# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/OrderConfirmation
  def OrderConfirmation
    OrderMailer.OrderConfirmation
  end

end
