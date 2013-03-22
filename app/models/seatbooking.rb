# == Schema Information
#
# Table name: seatbookings
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  seat_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Seatbooking < ActiveRecord::Base
  attr_accessible :user_id, :flight_id, :seat_id
  belongs_to :seat
  belongs_to :flight
  belongs_to :user
<<<<<<< HEAD

=======
>>>>>>> 5c80769460f4b3f1c8d2471452268e890548c3cd
end
