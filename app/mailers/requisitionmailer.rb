class Requisitionmailer < ActionMailer::Base
  default from: "snehp92@gmail.com"
def requisition_confirmation(requisition)
    @requisition = requisition
    @url = 'http://blooming-hollows-3183.herokuapp.com/requisitions'
    mail(:to => "sapandya92@yahoo.co.in", :subject => " New requisition send by #{@requisition.from}" )
    

  end
end
