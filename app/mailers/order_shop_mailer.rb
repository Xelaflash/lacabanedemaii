
class OrderShopMailer < ApplicationMailer

  def order_confirmation_shop(order_shop)
    @order_pay = order_shop
    @order_items = order_shop.order_items
    @user_id = order_shop.user_id
    @user = User.find(@user_id)
      mail(
        to:       'lacabanedemaii.website@gmail.com',
        subject:  "Nouvelle commande - commande n° #{@order_pay.id}  - De : #{@order_pay.customer}"
      )
  end
end
