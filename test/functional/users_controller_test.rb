require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index

    assert_response :success

    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new

    assert_response :success
  end

  test "should create user" do
    user_params = @user.attributes.except('_id', 'created_at', 'updated_at')
    user_params['email'] = "#{SecureRandom.uuid.delete('-')}@localhost.dev"

    assert_difference('User.count') do
      post :create, params: { user: user_params }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, params: { id: @user.to_param }

    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @user.to_param }

    assert_response :success
  end

  test "should update user" do
    user_params = @user.attributes.except('_id', 'created_at', 'updated_at')
    user_params['email'] = 'three@localhost.dev'

    put :update, params: { id: @user.to_param, user: user_params }

    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, params: { id: @user.to_param }
    end

    assert_redirected_to users_path
  end
end
