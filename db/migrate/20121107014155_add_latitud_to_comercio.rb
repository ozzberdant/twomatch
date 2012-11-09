class AddLatitudToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :latitud, :string
  end
end
