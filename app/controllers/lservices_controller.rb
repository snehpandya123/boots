class LservicesController < ApplicationController
   def new
 		@lservice  =  Lservice.new
  end
  def create
		@lservice  =  Lservice.new(params[:lservice])
			if @lservice.save
				
				
				flash[:success] = "Vendor Added Successfully"
				redirect_to new_lservice_path
			else
				flash[:warning] = "not added"
				render 'new'
			end
  end
  
  def show
	@lservice  =  Lservice.find(params[:id])
	
	
	
  end
 
def index
		
		@lservice =  Lservice.all
		
	end
end
