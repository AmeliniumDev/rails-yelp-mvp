class RestaurantsController < ApplicationController
  def index
    # GET /restaurants
    @restaurants = Restaurant.all
  end

  def show
    # GET /restaurants/:id
    @restaurants = Restaurant.find(params[:id])
  end

  def new
    # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  def create
    # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # no need for app/views/restaurnats/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    # GET /restaurants/:id/edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    # PATCH /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    # no need for app/views/tasks/update.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    # DELETE /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
  # :name
  # :address
  # :phone_number
  # :category
end
