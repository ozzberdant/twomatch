class AddLongitudToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :longitud, :string
  end
end
