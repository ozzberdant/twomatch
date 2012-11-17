class CreateRecursos < ActiveRecord::Migration
  def change
    create_table :recursos do |t|
      t.string :nombre
      t.string :precio
      t.string :precioReserva
      t.string :descripcion
      t.integer :comercio_id
      t.integer :tipoReserva_id
      t.integer :estadoRecurso_id

      t.timestamps
    end
  end
end
