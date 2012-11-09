class AddDescripcionToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :descripcion, :string
  end
end
