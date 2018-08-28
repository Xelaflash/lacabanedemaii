require 'test_helper'

class OrderShopMailerTest < ActionMailer::TestCase
  test "Order_shop_confirmation" do
    mail = OrderShopMailer.Order_shop_confirmation
    assert_equal "Order shop confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
