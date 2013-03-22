# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  origin      :string(255)
#  destination :string(255)
#  number      :string(255)
#  date        :date
#  plane_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ActiveRecord::Base
  attr_accessible :origin, :destination, :number, :date
  belongs_to :plane
  has_many :seat_bookings
end
