require 'test_helper'

class CryptocurrencieControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get cryptocurrencie_home_url
    assert_response :success
  end

end
