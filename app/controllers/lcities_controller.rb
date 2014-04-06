class LcitiesController < ApplicationController
   def new
 		@lcity  =  Lcity.new
  end
  def create
		@lcity  =  Lcity.new(params[:lcity])
			if @lcity.save
				
				
				flash[:success] = "Vendor Added Successfully"
				redirect_to new_lcity_path
			else
				flash[:warning] = "not added"
				render 'new'
			end
  end
  
  def show
	@lcity  =  Lcity.find(params[:id])
	
	
	
  end
 
def index
		
		@lcity =  Lcity.all
		
	end
end
