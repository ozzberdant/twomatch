class CreateEstadoReservas < ActiveRecord::Migration
  def change
    create_table :estado_reservas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
