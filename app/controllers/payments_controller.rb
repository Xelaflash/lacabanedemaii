class PaymentsController < ApplicationController
    before_action :set_order

  def new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
    add_breadcrumb "Paiement", new_order_payment_path

    @order = current_user.orders.where(order_status_id: 1).find(params[:order_id])
    # session = Stripe::Checkout::Session.create(
    #   payment_method_types: ['card'],
    #   submit_type: "pay",
    #   locale: "fr",
    #   line_items: [{
    #     name: "Commande n° #{@order_pay.id}",
    #     description: "Paiement pour la commande n° #{@order_pay.id} du #{@order_pay.created_at.strftime("%d/%m/%Y à %H:%M")}",
    #     amount: @order_pay.total_price_cents,
    #     currency: 'eur',
    #     quantity: 1,
    #     images: ['https://res.cloudinary.com/drzibyjvb/image/upload/v1553790778/cabane_biz_card.jpg'],
    #   }],
    #   # TODO: change URL for real ones!!!!!
    #   success_url: 'https://lacabanedemaii.herokuapp.com/paiement_reussi',
    #   cancel_url: 'https://lacabanedemaii.herokuapp.com/paiement_annule',
    # )
    # @session = session.id
  end
end
