class EmpMailer < ActionMailer::Base
  default from: "snehp92@gmail.com"
  def registration_confirmation(emp)
    @emp = emp
   
    mail(:to => "<#{emp.email}>,bhargavipandya63@yahoo.com", :subject => "Registered")
  end
end