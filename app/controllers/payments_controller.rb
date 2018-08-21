class PaymentsController < ApplicationController
    before_action :set_order

  def new
    @order_items = current_order.order_items
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
    add_breadcrumb "Paiement", new_order_payment_path
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.total_price_cents,
      description:  "Paiement pour la commande du #{@order.created_at} d'un montant de #{@order.total_price} €",
      currency:     'eur'
    )

    @order.update(payment: charge.to_json, order_status_id: 2, active: false)
    redirect_to orders_path

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_order_payment_path(@order)
  end

private

  def set_order
    @order =  current_order
    @order.user_id = current_user.id
    @order_total = @order.order_items
    @order.total_price_cents = current_order.total_price * 100
  end


end
