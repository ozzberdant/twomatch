class Recurso < ActiveRecord::Base
  attr_accessible :comercio_id, :descripcion, :estadoRecurso_id, :nombre, :precio, :precioReserva, :tipoReserva_id
  has_many :reservas
  belongs_to :tipoReserva
  belongs_to :estadoRecurso
end
