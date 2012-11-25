class AddLongitudeToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :longitude, :float
  end
end
