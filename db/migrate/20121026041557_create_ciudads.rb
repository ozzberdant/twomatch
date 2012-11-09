class CreateCiudads < ActiveRecord::Migration
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.integer :region_id

      t.timestamps
    end
 add_index :ciudads, [:region_id, :created_at] 
 end
end
