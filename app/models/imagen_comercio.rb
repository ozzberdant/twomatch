class ImagenComercio < ActiveRecord::Base
  attr_accessible :comercio_id, :descripcion, :nombre
  belongs_to :comercio

end
