class RealassetsController < ApplicationController
    def new
      @realasset = Realasset.new
      @location = Location.new
    end

    def create
      @realasset = Realasset.new(params[:realasset])
        if @realasset.save
          AssetMailer.registration_confirmation(@realasset).deliver
            flash[:success] = "Vendor Added Successfully"
            if emp_signed_in?
          redirect_to requisitions_new_path
            elsif authorize_signed_in?
               redirect_to realassets_new_path
            end
              
        else
          render 'new'
        end
    end

    def show
     @realasset = Realasset.find(params[:id])  
    end

    def index
      @realasset = Realasset.all
    end
  
    def destroy
      Realasset.find(params[:id]).destroy
        AssetMailer.asset_destroy(@realasset).deliver
          flash[:success] = "Asset removed."
      redirect_to realassets_path
  end
end
