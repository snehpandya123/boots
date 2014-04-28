class StocksController < ApplicationController
  def new
  	@stock = Stock.new
  end

  def create
  	@stock = Stock.new(params[:stock])
  		if @stock.save
  			flash[:success] = "Asset added to stock.."
  			redirect_to sen_path
  		else
  			flash[:warning] = "Unable to add asset, You already have added this before"
  			redirect_to sen_path
  		end
  end

  def index
  	@stock = Stock.all
    @allot = Allot.new
  
  end

  def show
  	@stock = Stock.find(params[:id])
  end
end
