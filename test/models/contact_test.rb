require 'test_helper'

class ContactTest < ActiveSupport::TestCase


  test 'name, email and body are required by law' do
    contact = Contact.new

    refute contact.valid?, 'Blank Mesage should be invalid'

    assert_match /blank/, contact.errors[:name].to_s
    assert_match /blank/, contact.errors[:email].to_s
    assert_match /blank/, contact.errors[:phone_number].to_s
    assert_match /blank/, contact.errors[:body].to_s
  end
end
