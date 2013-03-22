# == Schema Information
#
# Table name: planes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  num_rows    :integer
#  num_columns :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Plane < ActiveRecord::Base
  attr_accessible :name, :num_rows, :num_columns
  has_many :flights
  has_many :seats
end
