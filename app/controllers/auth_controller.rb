class AuthController < ApplicationController
 def main
  	@vendor  =  Vendor.new
	@vendor= Vendor.all
	@vendor = Vendor.order("name").page(params[:page]).per(10)
	@requisition = Requisition.all
 end
 
 def create
  	@asset = Asset.new(params[:asset])
			if @asset.save
				flash[:success] = "Asset Added Successfully"
				redirect_to amain_path
			else
				render "main"
			end
  	@vendor = Vendor.new(params[:vendor])
			if @vendor.save
				flash[:success] = "Vendor Added Successfully"
				redirect_to emain_path
				else
				render "main"
			end
  end

  def destroy
    Requisition.find(params[:id]).destroy
   flash[:success] = "Requisition Removed."
    redirect_to amain_path
  end

end
