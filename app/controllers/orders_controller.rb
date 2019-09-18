class OrdersController < ApplicationController
  before_action :set_order

  def create
    @order =  current_order
    @order.user_id = current_user.id
    @order.customer = current_user.email
    @order_items = @order.order_items
    @order.prod_list =  @order_items.map{|order_item| [order_item.quantity, order_item.produit.nom]}
    @order.validate_deliv_details = true

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
      # # TODO: change URL for real ones!!!!!
      # success_url: 'https://lacabanedemaii.herokuapp.com/paiement_reussi',
      # cancel_url: 'https://lacabanedemaii.herokuapp.com/paiement_annule',
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )

    @order.checkout_session_id = session.id
    if @order.save
      redirect_to new_order_payment_path(@order)
    else
      flash.now[:alert] = "Vous n'avez pas rempli les détails de livraison"
      render "carts/show"
    end

    # @order.update(checkout_session_id: session.id)
  end

  def index
    @orders = current_user.orders.all.order(:id)
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
  end

  def show
    @order = current_user.orders.find(params[:id])
    @order.validate_deliv_details = true
    @order_items = @order.order_items
    @order_items.each  do |order_item|
      if order_item.produit.active == false
        order_item.destroy
        flash[:alert] = "Le produit #{order_item.produit.nom} est indisponible. Il a été retiré du panier"
        redirect_to order_path(@order)
      end
    end
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
    add_breadcrumb "mes commandes", orders_path
    add_breadcrumb "Paiement", new_order_payment_path(@order)
  end

  def update
    @order = current_order
    @order_items = @order.order_items
    @order.validate_deliv_details = true
    if @order.update(order_params)
      flash.now[:notice] = "Les détails de livraison ont bien été ajoutés"
      render "carts/show"
    else
      flash.now[:alert] = "Vous n'avez pas rempli les détails de livraison"
      render "carts/show"
    end
  end

  def destroy
    @order =  current_user.orders.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:deliv_adress, :deliv_adress_nb, :deliv_adress_zip_code, :deliv_adress_city, :deliv_adress_details, :deliv_adress_pays, :client_name)
  end

end
