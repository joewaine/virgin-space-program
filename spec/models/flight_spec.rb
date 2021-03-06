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

require 'spec_helper'

describe Flight do
  describe '.new' do
    it 'creates an instance of Flight' do
      flight = Flight.create(:origin => 'JFK', :destination => 'SYD', :number => '456', :date => '2013-03-22')
      expect(flight).to be_an_instance_of(Flight)
    end
  end
  describe '#plane' do
    it 'has many flights' do
      flight = Flight.create(:origin => 'JFK', :destination => 'SYD', :number => '456', :date => '2013-03-22')
      plane = Plane.new
      plane.flights << flight
      expect(plane.flights.first).to be_an_instance_of(Flight)
    end
  end
end
