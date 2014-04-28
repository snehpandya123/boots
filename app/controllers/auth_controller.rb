class AuthController < ApplicationController
 def main
  	
	@requisition = Requisition.all
   @requisition = Requisition.order("id DESC").page(params[:page]).per(8)
   
 
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

   @stock = Stock.all
  end
  
  

end
