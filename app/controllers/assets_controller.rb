class AssetsController < ApplicationController
  def new
  	@asset = Asset.new
  end

  def create
  	@asset = Asset.new(params[:asset])
			if @asset.save
				flash[:success] = "Vendor Added Successfully"
				redirect_to @asset
      else
        render "amian"
			end
  end

  def show
  
  end

  def index
  	@asset = Asset.all
  	@asset = Asset.order("name").page(params[:page]).per(5)
  end
  def destroy
   Asset.find(params[:id]).destroy
   flash[:success] = "Vendor destroyed."
    redirect_to assets_path
      
    end
end
