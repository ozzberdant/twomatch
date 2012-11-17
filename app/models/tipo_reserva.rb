class TipoReserva < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many :recursos

end
