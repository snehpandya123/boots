class PoappsController < ApplicationController
  def new
  	@poapp = Poapp.new
  end

  def create
  	@poapp = Poapp.new(params[:poapp])
			if @poapp.save
				
				
				flash[:success] = "Purchase order Action have been Taken"
				redirect_to hmain_path
			else
				flash[:waring] = "Please take a needfull action for the Purchase order"
				redirect_to hmain_path
			end
  end

  def show

  end

  def index
    @poapp = Poapp.all

    @poapps =  Poapp.where(action: 'approve').pluck( :invoice , :from)
    @poappss =  Poapp.where(action: 'disapprove').pluck( :invoice , :from)
   
  end
end
