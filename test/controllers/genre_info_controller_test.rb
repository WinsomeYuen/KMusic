require 'test_helper'

class GenreInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get kpop" do
    get genre_info_kpop_url
    assert_response :success
  end

end
