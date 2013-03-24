class PlanesController < ApplicationController
  def index
    @planes = Plane.order(:name)
  end

  def new
    @plane = Plane.new
  end

  def create
    @planes = Plane.order(:name)
    @plane = Plane.create(params[:plane])
  end
end
