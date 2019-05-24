class BikesController < ApplicationController
  # skip_before_action: authenticate_ueser, only: :index
  def index
    @bikes = Bike.All
  end

  def show
    @bike = Bike.find(:id)
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def bike_params
    params.require(:bike).permit(:name, :brand, :address, :category, :price_per_day, :user_id)
  end
end
