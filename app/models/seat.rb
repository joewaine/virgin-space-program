# == Schema Information
#
# Table name: seats
#
#  id         :integer          not null, primary key
#  row        :integer
#  column     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plane_id   :integer
#

class Seat < ActiveRecord::Base
  attr_accessible :row, :column
  belongs_to :plane
  has_many :seatbookings
end
