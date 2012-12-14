class Recurso < ActiveRecord::Base
	attr_accessible :comercio_id, :descripcion, :estadoRecurso_id, :nombre, :precio, :precioReserva, :tipoReserva_id
  	has_many :reservas
  	belongs_to :tipoReserva
  	belongs_to :estadoRecurso

	def tieneReservasDisponibles(fechaBusqueda, hora)
		self.reservas.each do |reserva|
			if(self.estadoRecurso.nombre=="activo" and self.tipoReserva.nombre=="H" and reserva.estadoReserva.nombre == "Disponible" and reserva.fechaReserva == fechaBusqueda and reserva.hora.nombre==hora) 
				puts "se ha encontrado una reserva!"
				return true
			end
		end
		return false
	end
	
	def reservasDisponibles(fechaBusqueda, hora)
		self.reservas.each do |reserva|
			if(self.estadoRecurso.nombre=="activo" and self.tipoReserva.nombre=="H" and reserva.estadoReserva.nombre == "Disponible" and reserva.fechaReserva == fechaBusqueda and reserva.hora.nombre==hora) 
				puts "se ha encontrado una reserva!"
				return reserva
			end
		end
		return nil
	end
	

end
