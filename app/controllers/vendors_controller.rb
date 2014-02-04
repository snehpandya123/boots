class VendorsController < ApplicationController
  def new
  		
		@vendor  =  Vendor.new
  end
  def create
		@vendor = Vendor.new(params[:vendor])
			if @vendor.save
				
				flash[:success] = "Vendor Added Successfully"
				redirect_to @vendor
			else
				
				render 'new'
			end
  end
  
  def show
	@vendor = Vendor.find(params[:id])
	
	@title = @vendor.name
  end
 
def index
		@title = "All users"
		@vendor= Vendor.all
		@vendor = Vendor.order("name").page(params[:page]).per(10)
		

end
end
