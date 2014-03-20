class LocationsController < ApplicationController
  def new
     @location = Location.new
  end

  def show
     @location = Location.find(params[:id])
  end

  def index
    @location = Location.all
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to @location
  end

  def create
     @location = Location.new(params[:location])
        if @location.save
          flash[:success] = "Location  Added Successfully"
            redirect_to realassets_new_path
          else
            render 'new'
        end
  end
end
