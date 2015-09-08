class RemovePickUpFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :pick_up, :date
  end
end
