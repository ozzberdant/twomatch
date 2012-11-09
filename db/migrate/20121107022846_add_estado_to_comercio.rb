class AddEstadoToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :estado, :boolean
  end
end
