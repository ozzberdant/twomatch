class Instalacion < ActiveRecord::Base
  attr_accessible :nombre, :recinto_id
belongs_to :recinto
end
