class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @user = current_user
    @booking = @bike.bookings.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user
    @booking.begining_date = params[:search][:from]
    @booking.end_date = params[:search][:to]
    @booking.total_price = (@booking.end_date - @booking.begining_date) / (60 * 60 * 24).to_i * @bike.price_per_day
    @booking.status = "active"
    if @booking.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    redirect_to bookings_path
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    # no need for app/views/boking/update.html.erb
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # no need for app/views/boking/destroy.html.erb
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:begining_date, :end_date, :search)
    # params.require(:booking).permit(:begining_date, :end_date, :total_price, :status, :price_per_day, :user_id, :bike_id)
  end
end
