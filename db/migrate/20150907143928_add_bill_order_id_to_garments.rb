class AddBillOrderIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :bill_order_id, :integer
  end
end
