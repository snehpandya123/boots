class AddasstController < ApplicationController
  def new
  	@location = Location.new
  	@realasset= Realasset.new
  end
end
