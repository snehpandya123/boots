class AuthController < ApplicationController
  def main
  	@vendor  =  Vendor.new
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
