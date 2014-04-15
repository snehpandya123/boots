class PoappsController < ApplicationController
  def new
  	@poapp = Poapp.new
  end

  def create
  	@poapp = Poapp.new(params[:poapp])
			if @poapp.save
				
				
				flash[:success] = "Purchase order successfully approved"
				redirect_to hmain_path
			else
				flash[:waring] = "Purchase order disapproved"
				redirect_to hmain_path
			end
  end

  def show

  end

  def index
    @poapp = Poapp.all
    @poapps = Poapp.find_by_action("disapprove")
  end
end
