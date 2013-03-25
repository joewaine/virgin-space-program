class FlightsController < ApplicationController
 def index
  @flights = Flight.order(:number)
 end
  def new
    @flight = Flight.new
    @planes = Plane.order(:name)
  end
 def show
    @flight = Flight.find(params[:id])
    @plane = @flight.plane
 end
 def create
  @flights = Flight.all
  @planes = Plane.order(:name)
  Flight.create(params[:flight])
 end

 def purchase
  flight = Flight.find(params[:flight_number].to_i)
  chosen_seats = params[:ids].reject! { |c| c.empty? }
  prev_booked = flight.seatbookings.map{|i| i.seat_id}.uniq
  @intersection = chosen_seats & prev_booked
  seats = chosen_seats - prev_booked
    seats.each do |seat|
      seatbooking = Seatbooking.create
      seatbooking.user = @auth
      seatbooking.flight = flight
      seatbooking.seat = Seat.find(seat.to_i)
      seatbooking.save
    end
  end
end

