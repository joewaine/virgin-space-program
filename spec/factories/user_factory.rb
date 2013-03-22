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
