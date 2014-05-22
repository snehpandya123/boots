class HrsController < ApplicationController
  def hhome
  	@po = Po.all
  	 @po = Po.order("id DESC").page(params[:page]).per(10)
  end
  def destroy
  	
  end
end
