class RenameAndCreateAnotherAddress < ActiveRecord::Migration
  def change
	rename_column :places, :address, :address_1
  end
end
