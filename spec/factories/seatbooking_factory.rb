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

FactoryGirl.define do
  factory :seatbooking, class: Seatbooking do
    # user FactoryGirl.create(:regular_user)
    flight   FactoryGirl.create(:flight)
    seat     FactoryGirl.create(:seat)
  end
end
# Check that is consistent with other models
