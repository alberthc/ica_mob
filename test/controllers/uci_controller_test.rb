require 'test_helper'

class UciControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get smallgroups" do
    get :smallgroups
    assert_response :success
  end

end
