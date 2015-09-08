class RemoveDeliveryFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :delivery, :date
  end
end
