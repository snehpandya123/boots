class AuthController < ApplicationController
  def main
  	@vendor  =  Vendor.new
  	@title = "All users"
	@vendor= Vendor.all
	@vendor = Vendor.order("name").page(params[:page]).per(10)
  end
   def create
		@vendor = Vendor.new(params[:vendor])
			if @vendor.save
				
				flash[:success] = "Vendor Added Successfully"
			end
  end
  
  
  
  def show
	@vendor = Vendor.find(params[:id])
	
	@title = @vendor.name
  end
end
