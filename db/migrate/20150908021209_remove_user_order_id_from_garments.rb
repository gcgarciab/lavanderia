class RemoveUserOrderIdFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :user_order_id, :integer
  end
end
