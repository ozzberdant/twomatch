# == Schema Information
#
# Table name: instalacions
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  recinto_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InstalacionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
