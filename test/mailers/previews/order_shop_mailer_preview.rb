# Preview all emails at http://localhost:3000/rails/mailers/order_shop_mailer
class OrderShopMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_shop_mailer/Order_shop_confirmation
  def Order_shop_confirmation
    OrderShopMailer.Order_shop_confirmation
  end

end
