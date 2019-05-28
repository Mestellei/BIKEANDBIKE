class ReviewsController < ApplicationController
  def new
    # we need @booking in our `simple_form_for`

    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review.rating.to_i
    @review = Review.new(review_params)
    # we need `booking_id` to asssociate review with corresponding booking
    @review.booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
