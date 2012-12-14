class CreateHoras < ActiveRecord::Migration
  def change
    create_table :horas do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
