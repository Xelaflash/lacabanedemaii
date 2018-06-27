class ReviewsController < ApplicationController
  def create
    @produit = Produit.find(params[:produit_id])
    @review = current_user.reviews.new(review_params)
    @review.produit = @produit
    @order_item = current_order.order_items.new
    if @review.save
      flash[:notice] = "Votre commentaire a été ajouté"
      redirect_to produit_path(@produit)
    else
      render "produits/show"
      # flash[:alert] = "Le commentaire n'a pas pu être ajouté. Merci de réessayer"
    end
  end

  private


  def review_params
    params.require(:review).permit(:content, :rating, :recommend)
  end
end
