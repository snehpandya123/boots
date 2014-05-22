class RequisitionsController < ApplicationController
  def new
    @requisition = Requisition.new
    @realasset = Realasset.new
    @location = Location.new
  end

  def create
    @requisition = Requisition.new(params[:requisition])
    if @requisition.save
      begin
         Requisitionmailer.requisition_confirmation(@requisition).deliver
          if emp_signed_in?
            flash[:success] = " #{current_emp.username.capitalize} Your Requisition Submitted successfully"
          redirect_to emain_path
        elsif authorize_signed_in?
           flash[:success] = "#{current_authorize.username.capitalize} your requisition submitted successfully"
           redirect_to amain_path 
         elsif hr_signed_in?
          flash[:success] = "#{current_hr.usernmae.capitalize} your requisition submitted successifully"
          redirect_to hmain_path
        end
             
            
        rescue Exception => e
        if emp_signed_in?
            flash[:success] = " #{current_emp.username.capitalize} Your Requisition Submitted successfull"
             flash[:warning] = "Unable to send mail to General manager check your connection"
          redirect_to emain_path
        elsif authorize_signed_in?
          flash[:success] = "#{current_authorize.username.capitalize} your requisition submitted successfully"
           flash[:warning] = "Unable to send mail to General manager check your connection"
           redirect_to amain_path
         elsif hr_signed_in?
           flash[:success] = "#{current_hr.username.capitalize} your requisition submitted successifully"
           flash[:warning] = "Unable to send mail to General manager check your connection"
          redirect_to hmain_path
         end
     end
    else
      if emp_signed_in?
      flash[:warning] = "Unable to send requisition try again"
      redirect_to emain_path
       elsif authorize_signed_in?

      flash[:warning] = "Unable to send requisition some fields missing"
      redirect_to amain_path
      elsif hr_signed_in?
      flash[:warning] = "Unable to send requisition some fields missing"
      redirect_to hmain_path
      end
    
    end
  end

  def show
      @requisition = Requisition.find(params[:id])
      @po = Po.new
  
  end

  def index
      @requisition = Requisition.all
      @requisition = Requisition.order("id DESC").page(params[:page]).per(5)
  end

  def destroy
    @requisition = Requisition.find(params[:id])
    @requisition.destroy
    redirect_to requisitions_path
    
  end
  def cap
    
 
  end
end
