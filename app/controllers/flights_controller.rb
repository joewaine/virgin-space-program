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
    # plane_id = @flight.plane_id
    # flight = Flight.find(params[:id])
    # @plane = Flight.where(:plane_id => plane_id)

 end
 def create
  @flights = Flight.order(:number)
  Flight.create(params[:flight])
 end
end

