class Hora < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many  :horas

end
