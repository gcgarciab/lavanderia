class AddResponsibleOrderIdToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :responsible_order_id, :integer
  end
end
