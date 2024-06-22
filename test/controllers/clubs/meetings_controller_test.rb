require "test_helper"

class Clubs::MeetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clubs_meetings_index_url
    assert_response :success
  end
end
