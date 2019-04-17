class ReviewsController < ApplicationController
  def create
    @produit = Produit.friendly.find(params[:produit_id])
    @review = current_user.reviews.new(review_params)
    @review.produit = @produit
    @order_item = current_order.order_items.new
    if @review.save
      respond_to do |format|
        format.html { redirect_to produit_path(@produit) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
      # flash[:notice] = "Votre commentaire a été ajouté"
      # redirect_to produit_path(@produit)
    else
       respond_to do |format|
        format.html { render 'produits/show' }
        format.js  # <-- idem
      end
      # flash.now[:alert] = "Merci de revoir votre commentaire."
      # render "produits/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :recommend, :author)
  end
end
