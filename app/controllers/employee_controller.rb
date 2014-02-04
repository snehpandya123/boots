class EmployeeController < ApplicationController
  def emain
  	@replication  =  Replication.new
  	

  end
   def create
		@replication = Replication.new(params[:replication])
			if @replication.save
				flash[:success] = "Replication Added Successfully"
				redirect_to employee_emain_path
			end
		
  end
  
   

end
