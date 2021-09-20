require 'test_helper'

class KotobaWalletControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get kotoba_wallet_home_url
    assert_response :success
  end

  test "should get help" do
    get kotoba_wallet_help_url
    assert_response :success
  end

end
