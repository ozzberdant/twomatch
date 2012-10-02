# == Schema Information
#
# Table name: recintos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  direccion  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Recinto < ActiveRecord::Base
  attr_accessible :direccion, :nombre
has_many :instalacions
end
