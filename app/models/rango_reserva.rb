class RangoReserva < ActiveRecord::Base
  attr_accessible :fin, :inicio, :nombre, :tipoReserva_id
  has_many :tipoReservas

end
