class RentalsController < ApplicationController

  def index
    @rentals = Rental.all
  end

  def create
    @bike = Bike.find(params["bike_id"])
    @rental = Rental.new(rental_params)
    @rental.bike = @bike
    @rental.bike_sku = @bike.brand_sku
    @rental.amount = @bike.price
    @rental.state = 'pending'
    # raise
    # @bike = @rental.bike
    # @rental.save
    if @rental.save
      # redirect_to @rental
      redirect_to new_bike_rental_payment_path(@bike, @rental)
    else
      render bikes/show
    end
  end

  def update

  end

  def show
    @rental = Rental.where(state:'paid').find(params["id"])
    @bike = Bike.find(params["bike_id"])
  end

  private

  def rental_params
    params.require(:rental).permit(:pick_up_date, :return_date, :state, :bike_sku, :message_to_owner, :accepts_terms, :amount_Øres, :payment)
  end
end
