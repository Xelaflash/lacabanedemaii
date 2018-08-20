class OrdersController < ApplicationController

  def create
    @order =  current_order
    @order.user_id = current_user.id
    @order.customer = current_user.email
    @order_items = @order.order_items
    @order.prod_list =  @order_items.map{|order_item| [order_item.quantity, order_item.produit.nom]}
    @order.save
    redirect_to new_order_payment_path(@order)
  end

  def index
    @orders = current_user.orders.all.order(:id)
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
  end

  def show
    @order = current_user.orders.find(params[:id])
    @order_items = @order.order_items
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
    add_breadcrumb "mes commandes", orders_path
    add_breadcrumb "Paiement", new_order_payment_path(@order)
  end

  def update
    @order = current_order
    @order.update_attributes(order_params)
  end

  def destroy
    @order =  current_user.orders.find(params[:id])
    @order.destroy
  end

  private

  def order_params
    params.require(:order).permit(:deliv_adress)
  end

end
