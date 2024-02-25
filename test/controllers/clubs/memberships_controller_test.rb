require "test_helper"

class Clubs::MembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clubs_memberships_index_url
    assert_response :success
  end
end
