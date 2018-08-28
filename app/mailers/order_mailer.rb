class OrderMailer < ApplicationMailer

  def order_confirmation_user(order)
    @order_pay = order
    @order_items = order.order_items
    mail(
      to:       @order_pay.customer,
      subject:  "Confirmation de la commande n° #{@order_pay.id}"
    )
  end
end
