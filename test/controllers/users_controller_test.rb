require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  include Devise::TestHelpers                   
  include Warden::Test::Helpers	
  
  setup do    
    @user = users(:tom)
    @user.confirm
    sign_in @user       
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

end
