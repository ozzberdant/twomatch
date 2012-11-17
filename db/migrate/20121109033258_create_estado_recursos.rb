class CreateEstadoRecursos < ActiveRecord::Migration
  def change
    create_table :estado_recursos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
