class EmployeeController < ApplicationController
  def emain
  	@replication  =  Replication.new
  	

  end
   def create
		@replication = Replication.new(params[:replication])
			if @replication.save
				flash[:success] = "Replication Added Successfully"
				render "emain"
			else
				flash[:notice] = "try again later..cannot b saved"
				render "emain"
			end
		
  end
  
   

end
