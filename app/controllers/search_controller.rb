class SearchController < ApplicationController
 def index
  @flights = Flight.order(:number)
 end
 def show
  @flights = Flight.all
 end
 def new
  @flights = Flight.order(:number)
 end

 def create
  origin = params[:origin]
  dest = params[:destination]
  selected_flights = []

  @flights = Flight.all
  @flights.each do |flight|
    if flight.origin == origin && flight.destination == dest
      selected_flights << flight
    end
  end

  @flights = selected_flights

 end

end



