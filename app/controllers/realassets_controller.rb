class RealassetsController < ApplicationController
    def new
      @realasset = Realasset.new
      @location = Location.new
    end

    def create
      @realasset = Realasset.new(params[:realasset])
        if @realasset.save
          AssetMailer.registration_confirmation(@realasset).deliver
            flash[:success] = "Asset Added Successfully"
            if emp_signed_in?
          redirect_to emain_path
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
      @realasset = Realasset.order("name").page(params[:page]).per(5)
    end
  
    def destroy
      Realasset.find(params[:id]).destroy
        AssetMailer.asset_destroy(@realasset).deliver
          flash[:success] = "Asset removed."
      redirect_to realassets_path
  end
   def edit
    @realasset = Realasset.find(params[:id])
     @title = "Edit user"
  end
  
  def update
    @realasset = Realasset.find(params[:id])
      if @realasset.update_attributes(params[:realasset])
        flash[:success] = "Profile updated."
        redirect_to realassets_path
      else
        @title = "Edit user"
        render 'edit'
      end
  end
end
