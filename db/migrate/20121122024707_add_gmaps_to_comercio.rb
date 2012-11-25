class AddGmapsToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :gmaps, :float
  end
end
