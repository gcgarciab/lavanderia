class AddResponsibleIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :responsible_id, :integer
  end
end
