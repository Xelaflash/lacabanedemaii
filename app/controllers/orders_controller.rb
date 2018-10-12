class OrdersController < ApplicationController

  def create
    @order =  current_order
    @order.user_id = current_user.id
    @order.customer = current_user.email
    @order_items = @order.order_items
    @order.prod_list =  @order_items.map{|order_item| [order_item.quantity, order_item.produit.nom]}
    @order.validate_deliv_details = true
    if @order.save
      redirect_to new_order_payment_path(@order)
    else
      flash[:alert] = "Vous n'avez pas rempli les détails de livraison"
      redirect_to cart_path
    end
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
    @order.validate_deliv_details = true
    if @order.update_attributes(order_params)
      flash[:notice] = "Les détails de livraison ont bien été ajoutés"
      redirect_to cart_path
    else
      flash[:alert] = "Vous n'avez pas rempli les détails de livraison"
      redirect_to cart_path
    end
  end

  def destroy
    @order =  current_user.orders.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:deliv_adress, :deliv_adress_nb, :deliv_adress_zip_code, :deliv_adress_city, :deliv_adress_details, :deliv_adress_pays, :client_name  )
  end

end
