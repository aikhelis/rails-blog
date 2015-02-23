require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  test "should get new article " do
    get :new
    assert_response :success
  end
end
