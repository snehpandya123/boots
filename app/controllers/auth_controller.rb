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
  end
  	
  

end
