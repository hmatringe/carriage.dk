class AddAmountAndPaymentJsonToRentals < ActiveRecord::Migration[5.0]
  def change
    add_monetize :rentals, :amount, currency: { present: false }
    add_column :rentals, :payment, :json
  end
end
