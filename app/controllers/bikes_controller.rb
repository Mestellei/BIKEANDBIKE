class BikesController < ApplicationController
  # skip_before_action: authenticate_ueser, only: :index
  def index
    @bikes = Bike.where.not(latitude: nil, longitude: nil)

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude
      }
    end
  end

  def show
    @booking = Booking.new
    @bike = Bike.find(params[:id])
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user

    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new
    end
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
