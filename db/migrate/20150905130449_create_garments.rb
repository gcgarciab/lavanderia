class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :name
      t.integer :quantity
      t.text :description
      t.string :observation

      t.timestamps null: false
    end
  end
end
