require 'test_helper'

class BeerGeeksControllerTest < ActionController::TestCase
  setup do
    @beer_geek = beer_geeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beer_geeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beer_geek" do
    assert_difference('BeerGeek.count') do
      post :create, beer_geek: { desc: @beer_geek.desc, nom: @beer_geek.nom }
    end

    assert_redirected_to beer_geek_path(assigns(:beer_geek))
  end

  test "should show beer_geek" do
    get :show, id: @beer_geek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beer_geek
    assert_response :success
  end

  test "should update beer_geek" do
    patch :update, id: @beer_geek, beer_geek: { desc: @beer_geek.desc, nom: @beer_geek.nom }
    assert_redirected_to beer_geek_path(assigns(:beer_geek))
  end

  test "should destroy beer_geek" do
    assert_difference('BeerGeek.count', -1) do
      delete :destroy, id: @beer_geek
    end

    assert_redirected_to beer_geeks_path
  end
end
