class EmployeeController < ApplicationController
  def emain
   @requisition = Requisition.new
   @requisition = Requisition.order("name").page(params[:page]).per(10)
 
  end
   def create
		
 end
end

