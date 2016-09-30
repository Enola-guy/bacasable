require 'test_helper'

class BreweriesControllerTest < ActionController::TestCase
  setup do
    @brewery = breweries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:breweries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewery" do
    assert_difference('Brewerie.count') do
      post :create, brewery: { description: @brewery.description, name: @brewery.name }
    end

    assert_redirected_to brewery_path(assigns(:brewery))
  end

  test "should show brewery" do
    get :show, id: @brewery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewery
    assert_response :success
  end

  test "should update brewery" do
    patch :update, id: @brewery, brewery: { description: @brewery.description, name: @brewery.name }
    assert_redirected_to brewery_path(assigns(:brewery))
  end

  test "should destroy brewery" do
    assert_difference('Brewerie.count', -1) do
      delete :destroy, id: @brewery
    end

    assert_redirected_to breweries_path
  end
end
