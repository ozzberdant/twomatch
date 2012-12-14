class AddHoraToBusquedaComerciosForm < ActiveRecord::Migration
  def change
    add_column :busqueda_comercios_forms, :hora, :string
  end
end
