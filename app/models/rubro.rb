class Rubro < ActiveRecord::Base
  attr_accessible :nombre, :descripcion, :logo

  has_many :comercios

end
