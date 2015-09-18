class AddAddress2ToPlace < ActiveRecord::Migration
  def change
    add_column :places, :address_2, :string
  end
end
