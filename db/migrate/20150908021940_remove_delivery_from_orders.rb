class RemoveDeliveryFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :delivery, :date
  end
end
