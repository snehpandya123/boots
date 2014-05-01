class EmpsController < ApplicationController
  def show
  	@emp = Emp.find(params[:id])
  end
end
