class RentalsController < ApplicationController

  def create
    @bike = Bike.find(params["bike_id"])
    @rental = Rental.new(rental_params)
    @rental.bike = @bike
    # @bike = @rental.bike
    @rental.save
    # if @rental.save
    #   redirect_to @rental
    # else
    #   render bikes/show
    # end
  end

  def update

  end

  def show
  end

  private
  def rental_params
    params.require(:rental).permit(:pick_up_date, :return_date, :state, :bike_sku)
  end
end