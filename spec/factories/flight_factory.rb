FactoryGirl.define do
  factory :flight, :class => Flight do
    origin        'NY'
    destination   'LA'
    number         1
    date           '2013-04-01'
  end
end
#Check format for date