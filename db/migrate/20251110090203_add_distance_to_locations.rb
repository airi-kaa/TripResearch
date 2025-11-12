class AddDistanceToLocations < ActiveRecord::Migration[7.2]
  def change
    add_column :locations, :distance, :string
  end
end
