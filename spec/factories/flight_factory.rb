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

FactoryGirl.define do
  factory :flight, :class => Flight do
    origin        'NY'
    destination   'LA'
    number         1
    date           '2013-04-01'
  end
end
#Check format for date
