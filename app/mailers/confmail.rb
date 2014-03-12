class Confmail < ActionMailer::Base
  default from: "snehp92@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confmail.confmail.subject
  #
  def confmail
    @greeting = "Hi"

    mail to: "sapandya92@yahoo.co.in"
  end
end
