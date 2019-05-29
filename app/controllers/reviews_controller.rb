class ReviewsController < ApplicationController
  def new
    # we need @booking in our `simple_form_for`

    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `booking_id` to asssociate review with corresponding booking
    @review.booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to bookings_path
    else
      render 'bookings/index'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
