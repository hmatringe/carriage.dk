class AddDefaultToBikesChildrenSeatAttr < ActiveRecord::Migration[5.0]
  def change
    change_column_default :bikes, :children_seating_capacity, 0
  end
end
