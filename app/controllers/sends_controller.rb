class SendsController < ApplicationController
  def new
	@send = Send.new
  end

  def create
  @send = Send.new(params[:send])
  	if @send.save
  		 Pomailer.registration_confirmation(@send.po).deliver
  		flash[:success] = "Send mail"
  		redirect_to capax_path
  	else
  		flash[:warning] = "mail not send"
  		redirect_to capax_path
  end
end

  def show
  end

  def index
  end
end
