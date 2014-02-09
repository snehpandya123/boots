class ReplicationsController < ApplicationController
  def new
  	@replication  =  Replication.new
  	@repications = Replication.find(:all)

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
	def show
	@replication = Replication.find(params[:id])
 end	
end
