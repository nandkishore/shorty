require 'test_helper'

class LinksControllerTest < ActionController::TestCase
 
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post :create, :link => {:link => "https://www.google.co.in/" }
    end

    assert_redirected_to links_path
  end

  test "should not create link for null input" do
    assert_no_difference('Link.count') do
      post :create, :link => {:link => "" }
    end
    
  end

  test "should not create link for invalid input" do
    assert_no_difference('Link.count') do
      post :create, :link => {:link => "ABCD" }
    end
  end

  test "should show link" do
    get :show, :id => links(:one).access_token.to_param
    assert_redirected_to(links(:one).link)
  end

  test "should get edit" do
    get :edit, :id => links(:one).to_param
    assert_response :success
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, :id => links(:one).to_param
    end
    
    assert_redirected_to links_path
  end
end
