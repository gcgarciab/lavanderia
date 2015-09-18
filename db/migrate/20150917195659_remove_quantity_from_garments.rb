class RemoveQuantityFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :quantity, :integer
  end
end
