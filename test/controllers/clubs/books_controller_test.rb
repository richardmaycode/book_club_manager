require "test_helper"

class Clubs::BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clubs_books_index_url
    assert_response :success
  end
end
