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

FactoryGirl.define do
  factory :seat, class: Seat do
    row       1
    column    4
  end
end
