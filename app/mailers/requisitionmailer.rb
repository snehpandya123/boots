class Requisitionmailer < ActionMailer::Base
  default from: "snehp92@gmail.com"
def requisition_confirmation(requisition)
    @requisition = requisition
    @url = 'http://localhost:3000/requisitions'
    mail(:to => "sapandya92@yahoo.co.in", :subject => "Requisition send by #{@requisition.from}" )

  end
end
