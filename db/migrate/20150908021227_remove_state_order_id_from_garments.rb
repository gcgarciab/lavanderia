class RemoveStateOrderIdFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :state_order_id, :integer
  end
end
