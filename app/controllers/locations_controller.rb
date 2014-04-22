class LocationsController < ApplicationController
  def new
     @location = Location.new
  end

  def show
     @location = Location.find(params[:id])
     redirect_to edit_location_path
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
  def edit
     @location = Location.find(params[:id])
  end
  
  def update
   @location = Location.find(params[:id])
      if @location.update_attributes(params[:location])
        flash[:success] = "Location updated Successfully...."
        redirect_to locations_path
      else
       
        render 'edit'
      end
  end
end
