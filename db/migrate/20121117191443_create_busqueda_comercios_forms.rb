class CreateBusquedaComerciosForms < ActiveRecord::Migration
  def change
    create_table :busqueda_comercios_forms do |t|
      t.integer :region_id
      t.integer :ciudad_id
      t.string :fechaBusqueda

      t.timestamps
    end
  end
end
