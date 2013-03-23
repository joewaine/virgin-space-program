class SearchController < ApplicationController
 def index
  @flights = Flight.all
 end
 def show
  @flights = Flight.all
 end
end

