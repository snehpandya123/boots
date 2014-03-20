class RequisitionsController < ApplicationController
  def new
    @requisition = Requisition.new
    @realasset = Realasset.new
    @location = Location.new
  end

  def create
    @requisition = Requisition.new(params[:requisition])
    if @requisition.save
     Requisitionmailer.requisition_confirmation(@requisition).deliver
      if emp_signed_in?
        
      flash[:success] = " #{current_emp.username.capitalize} Your Requisition Submitted successfull"
      redirect_to emain_path
    end
    else
      if emp_signed_in?
      flash[:warning] = "Unable to send requisition try again"
      render "new"
    elsif authorize_signed_in?
      flash[:warning] = "Unable to send requisition try again"
      redirect_to emain_path
      end
      
    end
  end

  def show
  @requisition = Requisition.find(params[:id])
  
  end

  def index
    @requisition = Requisition.all
    @requisition = Requisition.order("name").page(params[:page]).per(5)
  end

  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy
    redirect_to requisitions_path
    
  end
end
