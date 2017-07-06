class BikesController < ApplicationController
  before_action :set_bike, only: [:show]

  def index
    @bikes = Bike.where.not(latitude: nil, longitude: nil)
    @bikes.each do |bike|
    (@markers ||= []).push [
                            bike.id,
                            bike.latitude,
                            bike.longitude,
                            bike.photo.first.public_id,
                            bike.price.fractional/100,
                            bike.price.currency.iso_code,
                            bike.brand_model.length > 21 ? bike.brand_model[0..21] + '…': bike.brand_model,
                            bike.caption.length > 25 ? bike.caption[0..25] + "…" : bike.caption
                            ]
    end
  end

  def show
    @rental = Rental.new
    @bike_coordinates = { lat: @bike.latitude, lng: @bike.longitude } # used for a JS test can be deleted.
    @hash = Gmaps4rails.build_markers(@bike) do |bike, marker|
      marker.lat bike.latitude
      marker.lng bike.longitude
    end
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
    params.require(:bike).permit(:color, :description_title, :description, :caption, :address, :zip_code, :city, :country, :brand_model, :brand, :brand_sku, :renter_must_have_experience_driving_cargo_bikes, :renter_must_have_experience_cycling_in_the_city, :renter_can_be_a_company, :has_seatbelt, :has_rain_cover, :box_has_bench, :is_electric, :children_seating_capacity, :gears_set, :light_set, :lock_set, :box_dimensions, :state, photo: [])
  end
end

