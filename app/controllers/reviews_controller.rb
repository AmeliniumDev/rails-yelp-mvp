class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_restaurant
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
  # :content
  # :rating
  # :restaurant
end
