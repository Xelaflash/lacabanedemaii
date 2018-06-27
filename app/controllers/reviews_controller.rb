class ReviewsController < ApplicationController
  def new

    @produit = Produit.find(params[:produit_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.produit = Produit.find(params[:produit_id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :recommend)
  end
end
