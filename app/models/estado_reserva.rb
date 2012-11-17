class EstadoReserva < ActiveRecord::Base
  attr_accessible :nombre
  has_many :reservas
end
