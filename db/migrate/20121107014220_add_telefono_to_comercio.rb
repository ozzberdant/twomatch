class AddTelefonoToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :telefono, :string
  end
end
