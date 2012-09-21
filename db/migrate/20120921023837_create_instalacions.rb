class CreateInstalacions < ActiveRecord::Migration
  def change
    create_table :instalacions do |t|
      t.string :nombre
      t.integer :recinto_id

      t.timestamps
    end
  end
end
