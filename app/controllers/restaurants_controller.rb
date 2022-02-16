class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Restaurant created!!!!!!'
    else
     render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

 private
  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
