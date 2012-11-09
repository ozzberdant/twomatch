class AddLogoToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :logo, :string
  end
end
