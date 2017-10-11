class RestaurantsController < ApplicationController
  # Only (aka: only:) for certain methods in this class, before it does anything (aka: before_action) call a certain function first.
  before_action :set_restaurants, only: [:show]


  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new # This renders the 'new.html.erb'
    end
  end

  # def edit
  # end

  # def update
  #   if @restaurant.update(restaurant_params)
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurants # Since this is used frequently it is defined here and then applied with 'before_action' at the top of this file.
    @restaurant = Restaurant.find(params[:id])
  end

end
