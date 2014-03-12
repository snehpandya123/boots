class RequisitionsController < ApplicationController
  def new
    @requisition = Requisition.new
    @realasset = Realasset.new
    @location = Location.new
  end

  def create
    @requisition = Requisition.new(params[:requisition])
    if @requisition.save
      flash[:success] = "Requisition Submitted sUCCESSIFULLLY"
      redirect_to @requisition
    else
      flash[:warning] = "Unable to send requisition try again"
      redirected_to requisition_new_path
    end
  end

  def show
  @requisition = Requisition.find(params[:id])
  
  end

  def index
    @requisition = Requisition.all
  end

  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy
    redirect_to requisitions_path
    
  end
end
