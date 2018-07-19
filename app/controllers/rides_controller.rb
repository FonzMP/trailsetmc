class RidesController < ApplicationController
  
  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.create(ride_params)
  end

  private

  def ride_params
    params.require(:ride).permit(:name)
  end
end
