require 'test_helper'

class VoteControllerTest < ActionDispatch::IntegrationTest
  test "should get votes" do
    get vote_votes_url
    assert_response :success
  end

end
