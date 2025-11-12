class AddCostToLocations < ActiveRecord::Migration[7.2]
  def change
    add_column :locations, :cost, :string
  end
end
