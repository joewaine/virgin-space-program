FactoryGirl.define do
  factory :seatbooking, class: Seatbooking do
    customer FactoryGirl.create(:regular_user)
    flight   FactoryGirl.create(:flight)
    seat     FactoryGirl.create(:seat)
  end
end
# Check that is consistent with other models