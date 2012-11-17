class Comercio < ActiveRecord::Base
  attr_accessible :ciudad_id, :nombre, :rubro_id, :descripcion, :direccion, :latitud, :longitud, :telefono, :email, :user_id, :cuentaCorriente, :identificadorComercio, :estado, :rut, :logo, :region_id
  belongs_to :rubro
  belongs_to :ciudad
  belongs_to :user
  has_many :recursos
  belongs_to :region
end
