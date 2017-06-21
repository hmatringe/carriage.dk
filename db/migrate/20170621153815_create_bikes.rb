class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.string :color
      t.string :description_title
      t.text :description
      t.string :caption
      t.string :address
      t.string :brand_model
      t.string :brand
      t.string :brand_sku
      t.boolean :renter_must_have_experience_driving_cargo_bikes
      t.boolean :renter_must_have_experience_cycling_in_the_city
      t.boolean :renter_can_be_a_company
      t.boolean :has_seatbelt
      t.boolean :has_rain_cover
      t.boolean :box_has_bench
      t.boolean :is_electric
      t.integer :children_seating_capacity
      t.string :gears_set
      t.string :light_set
      t.string :lock_set
      t.string :box_dimensions
      t.string :state

      t.timestamps
    end
  end
end
