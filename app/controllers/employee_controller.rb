class EmployeeController < ApplicationController
  def emain
   @requisition = Requisition.new
  
 
  end
   def create
		
 end
 def eform
 @emp = Emp.find(current_emp.id).requisitions
 end
 def charts
 	@emp = Emp.find(current_emp.id).requisitions
 	@rel = Emp.find(current_emp.id).realassets
 end
end

