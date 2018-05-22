require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get qui_sommes_nous" do
    get pages_qui_sommes_nous_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get livraison" do
    get pages_livraison_url
    assert_response :success
  end

  test "should get aide" do
    get pages_aide_url
    assert_response :success
  end

  test "should get mentions_legales" do
    get pages_mentions_legales_url
    assert_response :success
  end

  test "should get CGV" do
    get pages_CGV_url
    assert_response :success
  end

end
