class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :descripcion
      t.integer :recurso_id
      t.integer :rangoReserva_id
      t.integer :estadoReserva_id
      t.date :fechaReserva
      t.datetime :fechaTransaccion

      t.timestamps
    end
  end
end
