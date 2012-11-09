class AddIdentificadorComercioToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :identificadorComercio, :string
  end
end
