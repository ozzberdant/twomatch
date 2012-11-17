class AddRegionToComercio < ActiveRecord::Migration
  def change
    add_column :comercios, :region_id, :integer
  end
end
