class AllotsController < ApplicationController
  def new
  	@allot = Allot.new
  end

  def create
  	@allot = Allot.new(params[:allot])
  	if @allot.save
  		flash[:success] = "Successifully alloted to employee"
  		redirect_to stocks_path
  	else
  		flash[:warning] = "Unable to allot to employee"
  		redirect_to stocks_path
  	end
  end

  def show
  	@allot = Allot.find(params[:id])
  end

  def index
     @stock = Stock.joins(:allots).where('allots.stock_id IS NOT NULL')
  end
end
