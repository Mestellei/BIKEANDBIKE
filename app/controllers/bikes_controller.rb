class BikesController < ApplicationController
  # skip_before_action: authenticate_ueser, only: :index
  def index
    @search_coordinates = Geocoder.search(params[:where]).first.coordinates if params[:where].present?
    @bikes = Bike.where.not(latitude: nil, longitude: nil)
    @bikes = @bikes.near(@search_coordinates, 10) if params[:where].present?

    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { bike: bike })
      }
    end
    @search_coordinates = @search_coordinates.reverse if @search_coordinates
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
    params.require(:bike).permit(:name, :address, :category, :price_per_day, :user_id, :picture, :picture_cache)
  end
end
