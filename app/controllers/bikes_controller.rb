class BikesController < ApplicationController
  before_action :set_bike, only: [:show]

  def index
    @bikes = Bike.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to @bike
    else
      render :new
    end
  end

  private
  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:color, :description_title, :description, :caption, :address, :brand_model, :brand, :brand_sku, :renter_must_have_experience_driving_cargo_bikes, :renter_must_have_experience_cycling_in_the_city, :renter_can_be_a_company, :has_seatbelt, :has_rain_cover, :box_has_bench, :is_electric, :children_seating_capacity, :gears_set, :light_set, :lock_set, :box_dimensions, :state, photo: [])
  end
end

