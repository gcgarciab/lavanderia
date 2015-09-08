class RemovePickUpFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :pick_up, :date
  end
end
