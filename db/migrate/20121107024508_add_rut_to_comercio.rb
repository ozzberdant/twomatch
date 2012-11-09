class AddRutToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :rut, :string
  end
end
