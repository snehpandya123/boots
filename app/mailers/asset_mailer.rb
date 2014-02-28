class AssetMailer < ActionMailer::Base
 
   default from: "snehp92@gmail.com"

  def registration_confirmation(asset)
    @asset = asset
    
    mail(:to => "sapandya92@yahoo.co.in", :subject => "#{asset.name} in Added." )

  end
  def asset_destroy(asset)
  	@asset = asset

  	mail(:to => "sapandya92@yahoo.co.in" , :subject => "Asset :- #{asset.name} is deleted. ")
  	
  end
end
