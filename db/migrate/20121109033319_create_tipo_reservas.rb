class CreateTipoReservas < ActiveRecord::Migration
  def change
    create_table :tipo_reservas do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
