class SearchesController < ApplicationController
  def new
  	@search = Search.new
  end
  def create
    	@search = Search.new(params[:search])
        if @search.save
        flash[:success] = " Your results "
          redirect_to @search
        else
           redirect_to home_path
        end
      end

  def index
      @search = Search.find(params[:id])  
    @lcity = Lcity.all
    @lservice= Lservice.all
end
def  show
   
   @search = Search.find(params[:id])  
    @lcity = Lcity.all
    @lservice= Lservice.all
 end

end