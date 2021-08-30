require "test_helper"

class ZtnControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ztn_index_url
    assert_response :success
  end
end
