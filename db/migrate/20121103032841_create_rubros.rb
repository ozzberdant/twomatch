class CreateRubros < ActiveRecord::Migration
  def change
    create_table :rubros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
