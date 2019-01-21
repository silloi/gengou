require 'test_helper'

class GengouControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get generate_path
    assert_response :success
  end

end
