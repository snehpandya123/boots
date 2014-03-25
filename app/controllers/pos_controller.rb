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
        flash[:warning] = "Unable to send Purchase Order"
        redirect_to amain_path
      end
  end

  def show
  end

  def destroy
     Po.find(params[:id]).destroy
   flash[:success] = "Purchase order deleted."
    redirect_to pos_path
  end

  def index
    @po = Po.all
    @po = Po.order("name").page(params[:page]).per(5)
  end
end
