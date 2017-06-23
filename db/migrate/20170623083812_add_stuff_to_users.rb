class AddStuffToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name ,:string
    add_column :users, :last_name ,:string
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :facebook_picture_url, :string
    add_column :users, :token, :string
    add_column :users, :token_expiry, :datetime
    add_column :users, :birthday, :date
    add_column :users, :profile_description, :text
    add_column :users, :address ,:string
    add_column :users, :phone ,:string
    add_column :users, :postal_code ,:string
    add_column :users, :city ,:string
  end
end
