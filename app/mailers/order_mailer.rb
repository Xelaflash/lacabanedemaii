class OrderMailer < ApplicationMailer

  def order_confirmation_user(order)
    @order_pay = order
    mail(
      to:       @order_pay.customer,
      subject:  "Confirmation de la commande n° #{@order_pay.id}"
    )
  end
end
