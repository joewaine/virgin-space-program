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

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :is_admin
  has_many :seatbookings
end
