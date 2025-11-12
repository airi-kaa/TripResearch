
class LocationsController < ApplicationController
  def index
   @locations = Location.all
  end
  
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save 
      redirect_to action: :'index'
    else 
      render :'new'
    end
  end

  def ranking
    @locations = Location.order(overall: :desc)
  end

  def destroy
    locations = Location.find(params[:id])
    locations.destroy
    redirect_to action: :index
  end

  private

  def location_params
    params.require(:location).permit(:name,:username, :overall,:distance, :cost, :food, :camera)
  end
end