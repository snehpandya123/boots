require 'test_helper'

class ConfmailTest < ActionMailer::TestCase
  test "confmail" do
    mail = Confmail.confmail
    assert_equal "Confmail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
