class ReviewsController < ApplicationController
  def create
    @produit = Produit.find(params[:produit_id])
    @review = Review.new(review_params)
    @review.produit = @produit
    if @review.save
      redirect_to produit_path(@produit)
    else
      render "produits/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :recommend)
  end
end
