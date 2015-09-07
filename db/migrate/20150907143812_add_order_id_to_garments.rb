class AddOrderIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :order_id, :integer
  end
end
