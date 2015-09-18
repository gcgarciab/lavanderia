class AddQuantityToGarments < ActiveRecord::Migration
  def change
    add_column :garments, :quantity, :integer
  end
end
