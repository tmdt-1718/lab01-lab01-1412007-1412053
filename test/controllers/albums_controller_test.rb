require 'test_helper'

class AlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get albums_new_url
    assert_response :success
  end

end
