class Region < ActiveRecord::Base
  attr_accessible :nombre
  has_many :ciudads

end
