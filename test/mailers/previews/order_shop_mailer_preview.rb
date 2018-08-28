# Preview all emails at http://localhost:3000/rails/mailers/order_shop_mailer
class OrderShopMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_shop_mailer/Order_shop_confirmation
  def order_confirmation_shop
    order = Order.last
    OrderShopMailer.order_confirmation_shop(order)
  end

end
