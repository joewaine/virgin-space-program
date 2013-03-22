# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  row        :integer
#  column     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Seat < ActiveRecord::Base
  attr_accessible :row, :column
  belongs_to :plane
  has_many :seat_bookings
end
