class AuthController < ApplicationController
 def main
  	
	@requisition = Requisition.all
 end
 
 def create
  
  end

  def destroy
    Requisition.find(params[:id]).destroy
   flash[:success] = "Requisition Removed."
    redirect_to amain_path
  end
  def po
  end
  def capax
  end
  	
  

end
