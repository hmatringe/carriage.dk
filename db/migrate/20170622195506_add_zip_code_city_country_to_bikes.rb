class AddZipCodeCityCountryToBikes < ActiveRecord::Migration[5.0]
  def change
    add_column :bikes, :zip_code, :string
    add_column :bikes, :city, :string
    add_column :bikes, :country, :string
  end
end
