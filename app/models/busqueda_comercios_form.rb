class BusquedaComerciosForm < ActiveRecord::Base
  attr_accessible :ciudad_id, :fechaBusqueda, :region_id, :hora
  belongs_to :region
  belongs_to :ciudad

end
