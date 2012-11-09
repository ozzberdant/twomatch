class CreateComercios < ActiveRecord::Migration
  def change
    create_table :comercios do |t|
      t.string :nombre
      t.integer :rubro_id
      t.integer :ciudad_id

      t.timestamps
    end
  end
end
