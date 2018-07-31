class PaymentsController < ApplicationController
    before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @order.unit_price_cents,
    description:  "Paiement pour la commande du #{@order.created_at} d'un montant de #{@order.total_price} €",
    currency:     @order.amount.currency
  )

  @order.update(payment: charge.to_json, state: 'paid')
  redirect_to order_path(@order)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_order_payment_path(@order)
  end



private

  def set_order
    @order =  current_order
    @order.user_id = current_user.id
    @order_total = @order.order_items
  end
end
