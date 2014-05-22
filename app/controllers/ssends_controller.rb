class SsendsController < ApplicationController
  def new
	@ssend = Ssend.new
  end

  def create
  @ssend = Ssend.new(params[:ssend])
  	if @ssend.save
      begin
         Pomailer.registration_confirmation(@ssend.po).deliver
      flash[:success] = "E-mail was successfully sent to vendor, you can contact by phone to confirm"
      redirect_to capax_path
      rescue Exception => e
        
      flash[:success] = "Unable to send mail check your connection"
      redirect_to capax_path
      end
  		
  	else
  		flash[:warning] = "You are unable to send mail, you already have send it before"
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
