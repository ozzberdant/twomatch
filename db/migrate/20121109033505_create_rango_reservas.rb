class CreateRangoReservas < ActiveRecord::Migration
  def change
    create_table :rango_reservas do |t|
      t.string :nombre
      t.string :inicio
      t.string :fin
      t.integer :tipoReserva_id

      t.timestamps
    end
  end
end
