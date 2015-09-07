class AddUserOrderIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :user_order_id, :integer
  end
end
