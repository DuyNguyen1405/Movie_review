require 'test_helper'

class FavoriteMoviesControllerTest < ActionController::TestCase
  setup do
    @favorite_movie = favorite_movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_movie" do
    assert_difference('FavoriteMovie.count') do
      post :create, favorite_movie: {  }
    end

    assert_redirected_to favorite_movie_path(assigns(:favorite_movie))
  end

  test "should show favorite_movie" do
    get :show, id: @favorite_movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_movie
    assert_response :success
  end

  test "should update favorite_movie" do
    patch :update, id: @favorite_movie, favorite_movie: {  }
    assert_redirected_to favorite_movie_path(assigns(:favorite_movie))
  end

  test "should destroy favorite_movie" do
    assert_difference('FavoriteMovie.count', -1) do
      delete :destroy, id: @favorite_movie
    end

    assert_redirected_to favorite_movies_path
  end
end
