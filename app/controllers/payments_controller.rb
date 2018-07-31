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
    amount:       @order_final.unit_price_cents,
    description:  "Paiement pour la commande du #{@order_final.created_at} d'un montant de #{@order_final.total_price} €",
    currency:     @order_final.amount.currency
  )

  @order.update(payment: charge.to_json, state: 'paid')
  redirect_to order_path(@order)

rescue Stripe::CardError => e
  flash[:alert] = e.message
  redirect_to new_order_payment_path(@order_final)
  end



private

  def set_order
    @order_final =  current_order
    # @order.user_id = current_user.id
    @order_total = @order_final.order_items
  end
end
