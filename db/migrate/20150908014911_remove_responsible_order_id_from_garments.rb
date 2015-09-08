class RemoveResponsibleOrderIdFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :responsible_order_id, :integer
  end
end
