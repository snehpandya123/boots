class AssetsController < ApplicationController
  def new
  	@asset = Asset.new
  end

  def create
  	@asset = Asset.new(params[:asset])
			if @asset.save
				flash[:success] = "Asset Added Successfully"
				render "new"
      else
        render "new"
			end
  end

  def show
    @asset = Asset.find(params[:id])
  
  @title = @asset.name
  
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
