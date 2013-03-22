# == Schema Information
#
# Table name: seatbookings
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  flight_id   :integer
#  seat_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Seatbooking < ActiveRecord::Base
  attr_accessible :user_id, :flight_id, :seat_id
  belongs_to :seat
  belongs_to :flight
<<<<<<< HEAD
  belongs_to :user
=======
>>>>>>> 1a718a8a10af2715b7a840de540ad0d90db83d82
end
