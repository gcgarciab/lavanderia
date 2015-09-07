class AddBillIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :bill_id, :integer
  end
end
