class FavoriteMoviesController < ApplicationController
  before_action :set_favorite_movie, only: [:show, :edit, :update, :destroy]

  # GET /favorite_movies
  # GET /favorite_movies.json
  def index
    @favorite_movies = FavoriteMovie.all
  end

  # GET /favorite_movies/1
  # GET /favorite_movies/1.json
  def show
  end

  # GET /favorite_movies/new
  def new
    @favorite_movie = FavoriteMovie.new
  end

  # GET /favorite_movies/1/edit
  def edit
  end

  # POST /favorite_movies
  # POST /favorite_movies.json
  def create
    @favorite_movie = FavoriteMovie.new(user_id: params[:user_id], movie_id: params[:movie_id])
    respond_to do |format|
      if @favorite_movie.save
        # format.html { redirect_to @favorite_movie, notice: 'Favorite movie was successfully created.' }
        # format.json { render :show, status: :created, location: @favorite_movie }
        format.js
      else
        format.html { render :new }
        format.json { render json: @favorite_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_movies/1
  # PATCH/PUT /favorite_movies/1.json
  def update
    respond_to do |format|
      if @favorite_movie.update(favorite_movie_params)
        format.html { redirect_to @favorite_movie, notice: 'Favorite movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_movie }
      else
        format.html { render :edit }
        format.json { render json: @favorite_movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_movies/1
  # DELETE /favorite_movies/1.json
  def destroy
    @favorite_movie = FavoriteMovie.find(params[:id])
    @favorite_movie.destroy
    respond_to do |format|
      # format.html { redirect_to favorite_movies_url, notice: 'Favorite movie was successfully destroyed.' }
      # format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_movie
      @favorite_movie = FavoriteMovie.find_by(user_id: params[:user_id], movie_id: params[:movie_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_movie_params
      params.require(:favorite_movie).permit(:user_id, :movie_id)
      params.fetch(:favorite_movie, {})
    end
end
