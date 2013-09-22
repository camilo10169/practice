require 'test_helper'

class Table3sControllerTest < ActionController::TestCase
  setup do
    @table3 = table3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table3" do
    assert_difference('Table3.count') do
      post :create, table3: { code: @table3.code, name: @table3.name }
    end

    assert_redirected_to table3_path(assigns(:table3))
  end

  test "should show table3" do
    get :show, id: @table3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table3
    assert_response :success
  end

  test "should update table3" do
    patch :update, id: @table3, table3: { code: @table3.code, name: @table3.name }
    assert_redirected_to table3_path(assigns(:table3))
  end

  test "should destroy table3" do
    assert_difference('Table3.count', -1) do
      delete :destroy, id: @table3
    end

    assert_redirected_to table3s_path
  end
end
