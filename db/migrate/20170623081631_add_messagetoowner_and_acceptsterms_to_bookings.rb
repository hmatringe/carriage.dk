class AddMessagetoownerAndAcceptstermsToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :message_to_owner, :string
    add_column :bookings, :accepts_terms, :boolean
  end
end
