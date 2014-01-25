class ReplicationsController < ApplicationController
  def new
  	@replication  =  Replication.new
  	@repications = Replication.find(:all)

  end
   def create
		@replication = Replication.new(params[:replication])
			if @replication.save
				redirect_to employee_emain_path
			end
	end		
	def show
	@replication = Replication.find(params[:id])
 end	
end
