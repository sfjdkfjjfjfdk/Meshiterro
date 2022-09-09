require "test_helper"

class HomessControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get homess_about_url
    assert_response :success
  end
end
