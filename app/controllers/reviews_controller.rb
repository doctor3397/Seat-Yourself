class ReviewsController < ApplicationController
  before_action :load_restaurant
  # before_action :ensure_logged_in, only: [:create, :destroy]

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(
      comment: params[:review][:comment],
      restaurant_id: @restaurant.id,
      user_id: current_user.id
    )

    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review created successfully'
    else
      render 'restaurants/show'
    end

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:comment, :product_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
