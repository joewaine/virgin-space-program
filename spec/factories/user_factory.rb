# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_admin        :boolean
#

FactoryGirl.define do
  factory :regular_user, class: User do
    email                 'regular@gmail.com'
    password              'a'
    password_confirmation 'a'
    is_admin              false
  end

  factory :admin_user, class: User do
    email                 'admin@gmail.com'
    password              'a'
    password_confirmation 'a'
    is_admin              true
  end
end
