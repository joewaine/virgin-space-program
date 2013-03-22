require 'spec_helper'

describe 'Flights' do
  describe 'GET /' do
    it 'goes to the show page for flights' do
      user = User.create(email: 'bob@gmail.com', password: 'a', password_confirmation: 'a', is_admin: false)
      login
      click_button('Flights')
      current_path.should eq flights_path
    end
  end
end


# def login
#   visit root_path
#   click_link('Login')
#   fill_in('Email', :with => 'bob@gmail.com')
#   fill_in('Password', :with => 'a')
#   click_button('Login')
# end