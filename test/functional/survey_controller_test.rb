require 'test_helper'

class SurveyControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get quiz" do
    get :quiz
    assert_response :success
  end

end
