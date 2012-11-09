class Rubro < ActiveRecord::Base
  attr_accessible :nombre
  has_many :comercios

end
