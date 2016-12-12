require 'test_helper'

class FavoriteActorsControllerTest < ActionController::TestCase
  setup do
    @favorite_actor = favorite_actors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_actors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_actor" do
    assert_difference('FavoriteActor.count') do
      post :create, favorite_actor: {  }
    end

    assert_redirected_to favorite_actor_path(assigns(:favorite_actor))
  end

  test "should show favorite_actor" do
    get :show, id: @favorite_actor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_actor
    assert_response :success
  end

  test "should update favorite_actor" do
    patch :update, id: @favorite_actor, favorite_actor: {  }
    assert_redirected_to favorite_actor_path(assigns(:favorite_actor))
  end

  test "should destroy favorite_actor" do
    assert_difference('FavoriteActor.count', -1) do
      delete :destroy, id: @favorite_actor
    end

    assert_redirected_to favorite_actors_path
  end
end