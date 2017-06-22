class BikesController < ApplicationController
  before_action :set_bike, only: [:show]

  def index
    @bikes = Bike.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@bikes) do |bike, marker|
      marker.lat bike.latitude
      marker.lng bike.longitude
      # marker.infowindow render_to_string(partial: "/bikes/map_box", locals: { bike: bike })
    end

  end

  def show
    @booking = Booking.new
    # @alert_message = "You are viewing a bike with the ID #{@bike.id}" #example javascript yielded after_js
    @bike_coordinates = { lat: @bike.latitude, lng: @bike.longitude }
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

