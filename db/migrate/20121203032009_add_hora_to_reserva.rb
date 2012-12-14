class AddHoraToReserva < ActiveRecord::Migration
  def change
    add_column :reservas, :hora_id, :integer
  end
end
