require 'test_helper'

class RequirementsControllerTest < ActionController::TestCase
  setup do
    @requirement = requirements(:one)
  end

  test "should get index" do
    get :index, params: { user_id: @requirement.user.to_param }

    assert_response :success

    assert_not_nil assigns(:requirements)
  end

  test "should get new" do
    get :new, params: { user_id: @requirement.user.to_param }

    assert_response :success
  end

  test "should create requirement" do
    assert_difference('Requirement.count') do
      post(
        :create,
        params: {
          user_id: @requirement.user.to_param,
          requirement: @requirement.attributes.except('_id', 'user_id')
        }
      )
    end

    assert_redirected_to user_requirements_path(user_id: @requirement.user.to_param)
  end

  test "should show requirement" do
    get :show, params: { user_id: @requirement.user.to_param, id: @requirement.to_param }

    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { user_id: @requirement.user.to_param, id: @requirement.to_param }

    assert_response :success
  end

  test "should update requirement" do
    put(
      :update,
      params: {
        user_id: @requirement.user.to_param,
        id: @requirement.to_param,
        requirement: @requirement.attributes.except('_id', 'user_id')
      }
    )

    assert_redirected_to user_requirements_path(user_id: @requirement.user.to_param)
  end

  test "should destroy requirement" do
    assert_difference('Requirement.count', -1) do
      delete :destroy, params: { user_id: @requirement.user.to_param, id: @requirement.to_param }
    end

    assert_redirected_to user_requirements_path(user_id: @requirement.user.to_param)
  end
end
