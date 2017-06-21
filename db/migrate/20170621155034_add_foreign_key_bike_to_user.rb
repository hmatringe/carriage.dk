class AddForeignKeyBikeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :bikes, :user_id, :integer
    add_foreign_key :bikes, :users
  end
end
