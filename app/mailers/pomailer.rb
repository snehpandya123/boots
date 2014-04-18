class Pomailer < ActionMailer::Base
  default from: "from@example.com"

  def registration_confirmation(po)
    @po = po
    mail(:to => "sapandya92@yahoo.co.in", :subject => " New purchase order send by " )
    

  end
end
