class SsendsController < ApplicationController
  def new
	@ssend = Ssend.new
  end

  def create
  @ssend = Ssend.new(params[:ssend])
  	if @ssend.save
  		 Pomailer.registration_confirmation(@ssend.po).deliver
  		flash[:success] = "Send mail"
  		redirect_to capax_path
  	else
  		flash[:warning] = "mail not send"
  		redirect_to capax_path
  end
end

  def show
   
    @ssend = Ssend.find(params[:id])
   
    @po = Po.find(@ssend.po_id)
    @stock = Stock.new
 end

  def index
  end
end
