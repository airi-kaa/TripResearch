class AddCameraToLocations < ActiveRecord::Migration[7.2]
  def change
    add_column :locations, :camera, :string
  end
end
