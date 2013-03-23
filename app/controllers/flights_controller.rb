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
 end
 def create
  @flights = Flight.all
  @planes = Plane.order(:name)
  Flight.create(params[:flight])
 end
end

