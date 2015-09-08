class RemoveRequestFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :request, :date
  end
end
