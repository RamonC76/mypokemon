require "test_helper"

class PoksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get poks_index_url
    assert_response :success
  end
end
