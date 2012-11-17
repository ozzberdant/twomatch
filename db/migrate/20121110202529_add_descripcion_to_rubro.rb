class AddDescripcionToRubro < ActiveRecord::Migration
  def change
    add_column :rubros, :descripcion, :string
  end
end
