require 'test_helper'

class ListItemsControllerTest < ActionController::TestCase
  setup do
    @list_item = list_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_item" do
    assert_difference('ListItem.count') do
      post :create, :restaurant_id => restaurants(:one).id
    end
    assert_redirected_to guide_path
  end

  test "should show list_item" do
    get :show, id: @list_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_item.to_param
    assert_response :success
  end

#  test "should update list_item" do
#    assert_difference('ListItem.count') do
#      put :update, id: @list_item.to_param
#    end
#    assert_redirected_to guide_path
#  end

  test "should destroy list_item" do
    assert_difference('ListItem.count', -1) do
      delete :destroy, id: @list_item.to_param
    end

    assert_redirected_to guide_path
  end
  
  test "should create line via ajax" do
    assert_difference('ListItem.count') do
      xhr :post, :create, :restaurant_id => restaurants(:one).id
    end
  end

end
