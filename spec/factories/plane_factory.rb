# == Schema Information
#
# Table name: planes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  num_rows    :integer
#  num_columns :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :plane, class: Plane do
    name            '747'
    number_rows     1
    number_columns  1
  end
end
