class EmployeeController < ApplicationController
  def emain
  	@replication  =  Replication.new
  	@repications = Replication.find(:all)

  end
   def create
		@replication = Replication.new(params[:replication])
			if @replication.save
				flash[:success] = "Replication Added Successfully"
				redirect_to employee_emain_path
			end
		else
			redirect_to pages_home_path
  end
  
   

end
