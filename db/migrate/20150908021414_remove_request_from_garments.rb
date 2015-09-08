class RemoveRequestFromGarments < ActiveRecord::Migration
  def change
    remove_column :garments, :request, :date
  end
end
