require 'test_helper'

class Eat24signinsControllerTest < ActionController::TestCase
  setup do
    @eat24signin = eat24signins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eat24signins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eat24signin" do
    assert_difference('Eat24signin.count') do
      post :create, eat24signin: { emailid: @eat24signin.emailid, emailidconformation: @eat24signin.emailidconformation, firstname: @eat24signin.firstname, lastname: @eat24signin.lastname, password: @eat24signin.password }
    end

    assert_redirected_to eat24signin_path(assigns(:eat24signin))
  end

  test "should show eat24signin" do
    get :show, id: @eat24signin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eat24signin
    assert_response :success
  end

  test "should update eat24signin" do
    patch :update, id: @eat24signin, eat24signin: { emailid: @eat24signin.emailid, emailidconformation: @eat24signin.emailidconformation, firstname: @eat24signin.firstname, lastname: @eat24signin.lastname, password: @eat24signin.password }
    assert_redirected_to eat24signin_path(assigns(:eat24signin))
  end

  test "should destroy eat24signin" do
    assert_difference('Eat24signin.count', -1) do
      delete :destroy, id: @eat24signin
    end

    assert_redirected_to eat24signins_path
  end
end
