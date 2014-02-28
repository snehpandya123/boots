class VendorMailer < ActionMailer::Base
  default from: "snehp92@gmail.com"

  def registration_confirmation(vendor)
    @vendor = vendor
    
    mail(:to => "<#{vendor.email}>,sapandya92@yahoo.co.in", :subject => "Congrates for #{vendor.asset_name}" )

  end
end
