class AddCuentaCorrienteToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :cuentaCorriente, :string
  end
end
