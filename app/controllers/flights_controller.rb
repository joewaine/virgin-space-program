class FlightsController < ApplicationController
 def index
  @flights = Flight.order(:number)
 end
  def new
    @flight = Flight.new
  end
 def show
    @flight = Flight.find(params[:id])
    @plane = @flight.plane

 end
 def create
  @flights = Flight.order(:number)
  Flight.create(params[:flight])
 end
end

