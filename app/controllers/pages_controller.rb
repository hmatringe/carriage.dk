class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @bikes = Bike.last(3)
  end

  def components
    # @bike = Bike.last
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
    # raise
  end

  def credits
  end
end
