class PaymentsController < ApplicationController
    before_action :set_order

  def new
    @order_items = current_order.order_items
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order_final.total_price_cents,
      description:  "Paiement pour la commande du #{@order_final.created_at} d'un montant de #{@order_final.total_price} €",
      currency:     'eur'
    )

    @order_final.update(payment: charge.to_json, status: 'paid')
    redirect_to order_path(@order_final)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_order_payment_path(@order_final)
  end



private

  def set_order
    @order_final =  current_order
    @order_total = @order_final.order_items
    @order_final.total_price_cents = current_order.total_price * 100
  end
end
