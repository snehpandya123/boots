class EmployeeController < ApplicationController
  def emain
  	@replication  =  Replication.new
 
  end
   def create
		@replication = Replication.new(params[:replication])
		respond_to do |format|
			if @replication.save
				flash[:success] = "Replication Added Successfully"
				format.js {render(employee/show.js.erb)}
				render "emain"
			else
				flash[:notice] = "try again later..cannot b saved"
				render "emain"
			end
		end
 end
end

