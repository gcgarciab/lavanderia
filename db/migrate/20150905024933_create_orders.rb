class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :request
      t.date :pick_up
      t.date :delivery

      t.timestamps null: false
    end
  end
end
