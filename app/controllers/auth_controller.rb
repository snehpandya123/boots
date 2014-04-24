class AuthController < ApplicationController
 def main
  	
	@requisition = Requisition.all
   
 
 end
 
 def create
  
  end

  def destroy
  end
  def po
    @emp = Emp.all
  end
  def capax
    @po = Po.joins(:poapps).where('poapps.action LIKE ?', "approve")
  end
  def sen
   @po = Po.joins(:ssends).where('ssends.po_id IS NOT NULL')
   @stock = Stock.new
  end
  
  

end
