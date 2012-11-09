class AddDireccionToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :direccion, :string
  end
end
