class EmpsController < ApplicationController
  def show
  	@emps = Emp.find(params[:id])
  end
end
