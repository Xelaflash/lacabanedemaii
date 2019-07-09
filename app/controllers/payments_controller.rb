class PaymentsController < ApplicationController
    before_action :set_order

  def new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
    add_breadcrumb "Paiement", new_order_payment_path

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      submit_type: "pay",
      locale: "fr",
      line_items: [{
        name: "Commande n° #{@order_pay.id}",
        description: "Paiement pour la commande n° #{@order_pay.id} du #{@order_pay.created_at.strftime("%d/%m/%Y à %H:%M")}",
        amount: @order_pay.total_price_cents,
        currency: 'eur',
        quantity: 1,
        images: ['https://res.cloudinary.com/drzibyjvb/image/upload/v1553790778/cabane_biz_card.jpg'],
      }],
      success_url: 'http://localhost:3000/paiement_reussi',
      cancel_url: 'http://localhost:3000/paiement_annule',
    )
    @session = session.id

  end

  def create
    # customer = Stripe::Customer.create(
    #   source: params[:stripeToken],
    #   email:  params[:stripeEmail]
    # )
    # charge = Stripe::Charge.create(
    #   customer:     customer.id,
    #   amount:       @order_pay.total_price_cents,
    #   description:  "Paiement pour la commande n° #{@order_pay.id} du #{@order_pay.created_at} d'un montant de #{@order_pay.total_price} €",
    #   currency:     'eur'
    # )


    # flash[:notice] = "Votre paiement a été accepté. Vous allez recevoir un mail de confirmation."
    # @order_pay.update(payment: session.to_json, order_status_id: 2, active: false)

    # update_stock
    # OrderMailer.order_confirmation_user(@order_pay).deliver_now
    # OrderShopMailer.order_confirmation_shop(@order_pay).deliver_now

    # @order_last = current_user.orders.last.id
    # redirect_to order_path(@order_last)

    # rescue Stripe::CardError => e
    #   flash[:alert] = e.message
    #   redirect_to new_order_payment_path(@order_pay)
  end


end
