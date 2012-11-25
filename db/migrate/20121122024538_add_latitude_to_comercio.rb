class AddLatitudeToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :latitude, :float
  end
end
