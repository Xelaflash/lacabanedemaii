class PaymentsController < ApplicationController
    before_action :set_order

  def new
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
      amount:       @order_pay.total_price_cents,
      description:  "Paiement pour la commande n° #{@order_pay.id} du #{@order_pay.created_at} d'un montant de #{@order_pay.total_price} €",
      currency:     'eur'
    )

    flash[:notice] = "Votre paiement a été accepté. Vous allez recevoir un mail de confirmation."
    @order_pay.update(payment: charge.to_json, order_status_id: 2, active: false)

    OrderMailer.order_confirmation_user(@order_pay).deliver_later(wait: 1.minutes)
    OrderShopMailer.order_confirmation_shop(@order_pay).deliver_later(wait: 2.minutes)
    @order_last = current_user.orders.last
    redirect_to order_path(@order_last)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_order_payment_path(@order_pay)
  end

private

  def set_order
    @order_pay = current_order
    @order_total = @order_pay.order_items
    @order_pay.total_price_cents = @order_pay.total_price * 100
  end


end
