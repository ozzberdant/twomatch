class AddLogoToRubro < ActiveRecord::Migration
  def change
    add_column :rubros, :logo, :string
  end
end
