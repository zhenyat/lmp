require 'test_helper'

class Admin::BusinessTypesControllerTest < ActionController::TestCase
  setup do
    @business_type = business_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_type" do
    assert_difference('BusinessType.count') do
      post :create, business_type: { name: @business_type.name, name: @business_type.name, title: @business_type.title }
    end

    assert_redirected_to admin_business_type_path(assigns(:business_type))
  end

  test "should show business_type" do
    get :show, id: @business_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_type
    assert_response :success
  end

  test "should update business_type" do
    patch :update, id: @business_type, business_type: { name: @business_type.name, name: @business_type.name, title: @business_type.title }
    assert_redirected_to admin_business_type_path(assigns(:business_type))
  end

  test "should destroy business_type" do
    assert_difference('BusinessType.count', -1) do
      delete :destroy, id: @business_type
    end

    assert_redirected_to admin_business_types_path
  end
end
