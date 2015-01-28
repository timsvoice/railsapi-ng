require 'test_helper'

class BeersControllerTest < ActionController::TestCase
  setup do
    @beer = beers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beers)
  end

  test "should create beer" do
    assert_difference('Beer.count') do
      post :create, beer: { brewery: @beer.brewery, location: @beer.location, name: @beer.name, rating: @beer.rating }
    end

    assert_response 201
  end

  test "should show beer" do
    get :show, id: @beer
    assert_response :success
  end

  test "should update beer" do
    put :update, id: @beer, beer: { brewery: @beer.brewery, location: @beer.location, name: @beer.name, rating: @beer.rating }
    assert_response 204
  end

  test "should destroy beer" do
    assert_difference('Beer.count', -1) do
      delete :destroy, id: @beer
    end

    assert_response 204
  end
end
