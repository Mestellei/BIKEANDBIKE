class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)

    # no need for app/views/boking/update.html.erb
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # no need for app/views/boking/destroy.html.erb
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:begining_date, :end_date, :total_price, :status, :price_per_day, :user_id, :bike_id)
  end
end
