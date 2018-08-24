
class OrderShopMailer < ApplicationMailer

  def order_confirmation_shop(order_shop)
      @order = order_shop
      mail(
        to:       'lacabanedemaiwebsite@gmail.com',
        subject:  "Nouvelle commande - commande n° #{@order.id}"
      )
  end
end
