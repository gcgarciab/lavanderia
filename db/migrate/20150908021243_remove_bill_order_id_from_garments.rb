class RemoveBillOrderIdFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :bill_order_id, :integer
  end
end
