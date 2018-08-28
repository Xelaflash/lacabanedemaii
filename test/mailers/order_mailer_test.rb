require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "OrderConfirmation" do
    mail = OrderMailer.OrderConfirmation
    assert_equal "Orderconfirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
