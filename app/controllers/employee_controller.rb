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
 	if emp_signed_in?
 	@emp = Emp.find(current_emp.id).requisitions
 	@rel = Emp.find(current_emp.id).realassets
 	@empa = Emp.find(current_emp.id).poapps.where('poapps.action LIKE ?' , "approve")
 	@empd = Emp.find(current_emp.id).poapps.where('poapps.action LIKE ?' , "disapprove")
 	end
 	if authorize_signed_in? || hr_signed_in?
 		
 		@autha = Po.joins(:poapps).where('poapps.action LIKE ?', "approve")
 		@authd = Po.joins(:poapps).where('poapps.action LIKE ?', "disapprove")
 	end
 end
end

