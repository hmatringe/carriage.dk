class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params["bike_id"])
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    # @bike = @booking.bike
    @booking.save
    # if @booking.save
    #   redirect_to @booking
    # else
    #   render bikes/show
    # end
  end

  def update

  end

  def show
  end

  private
  def booking_params
    params.require(:booking).permit(:pick_up_date, :return_date, :state, :bike_sku)
  end
end
