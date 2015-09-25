class ReviewsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @review = Review.new
  end

  def create
    @review = Review.new(
      shop_id: params[:shop_id],
      user_id: current_user.id,
      comment: review_params["comment"],
      rate: review_params["rate"]
      )
    if @review.save
      redirect_to shop_url(@review.shop)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    shop_id = @review.shop_id
    @review.destroy
    redirect_to review_url(shop_id)
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rate, :shop_id, :user_id)
  end
end
