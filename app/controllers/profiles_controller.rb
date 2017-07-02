class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  private

  # def user_params
  #   params.require(:user).permit(:color, :description_title, :description, :caption, :address, :zip_code, :city, :country, :brand_model, :brand, :brand_sku, :renter_must_have_experience_driving_cargo_bikes, :renter_must_have_experience_cycling_in_the_city, :renter_can_be_a_company, :has_seatbelt, :has_rain_cover, :box_has_bench, :is_electric, :children_seating_capacity, :gears_set, :light_set, :lock_set, :box_dimensions, :state, photo: [])
  # end
end
