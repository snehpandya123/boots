class AssetMailer < ActionMailer::Base
 
   default from: "snehp92@gmail.com"

  def registration_confirmation(realasset)
    @realasset = realasset
    
    mail(:to => "sapandya92@yahoo.co.in", :subject => " #{realasset.name} is Added." )

  end
  def asset_destroy(realasset)
  	@realasset = realasset

  	mail(:to => "sapandya92@yahoo.co.in" , :subject => " Asset is deleted. ")
  	
  end
end
