class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.references :user, foreign_key: true
      t.references :bike, foreign_key: true
      t.date :pick_up_date
      t.date :return_date
      t.string :state
      t.string :bike_sku
      t.string :message_to_owner
      t.boolean :accepts_terms

      t.timestamps
    end
  end

end
