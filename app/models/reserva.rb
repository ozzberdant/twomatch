class Reserva < ActiveRecord::Base
	attr_accessible :descripcion, :estadoReserva_id, :fechaReserva, :fechaTransaccion, :rangoReserva_id, :recurso_id, :hora_id
	belongs_to :rangoReserva
  	belongs_to :estadoReserva
  	belongs_to :recurso
	belongs_to :hora
end
