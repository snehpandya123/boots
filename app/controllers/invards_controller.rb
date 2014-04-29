class InvardsController < ApplicationController
  def new
  	@invard = Invard.new
  end

  def create
  	@invard = Invard.new(params[:invard])
  	if @invard.save
  		flash[:success] = "Asset invard is successfully done, forward goods to cabin.."
  		redirect_to gmain_path
  	else
  		flase[:warning] = "Unable to invard,  check properly or TRY AGAIN"
  		redirect_to gmain_path
  	end
  end

  def show
  	@invard = Invard.find(params[:id])
  end

  def index
  	@invard = Invard.all
  end
end
