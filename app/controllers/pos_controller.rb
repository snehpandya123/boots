class PosController < ApplicationController
  def new
    @po = Po.new
  end

  def create
    @po = Po.new(params[:po])
      if @po.save
        flash[:success] = "Purchase Order is send for approval successfully wait for replay"
        redirect_to amain_path
      else
        flash[:warning] = "Unable to send Purchase Order TRY TO FILL ALL MISSING VALUES"
        redirect_to amain_path
      end
  end

  def show
     @ssend = Ssend.new
     @po = Po.find(params[:id]) 
     @poapp = Poapp.new 
  end

  def destroy
     Po.find(params[:id]).destroy
   flash[:success] = "Purchase order deleted."
    redirect_to pos_path
  end

  def index
    @po = Po.all
    @po = Po.order("name").page(params[:page]).per(10)
  end
   def edit
     @po = Po.find(params[:id])

  end
   def update
    @po = Po.find(params[:id])
      if @po.update_attributes(params[:po])
        flash[:success] = "Asset updated Successfully...."
        redirect_to @po
      else
       
        render 'edit'
      end
  end
end
