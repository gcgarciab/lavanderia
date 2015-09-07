class AddStateOrderIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :state_order_id, :integer
  end
end
