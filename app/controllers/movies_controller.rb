class MoviesController < ApplicationController
  # before_action :set_movie, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  helper_method :sort_column, :sort_direction
  # GET /movies
  # GET /movies.json
  def index

  end

  # GET /movies/1
  # GET /movies/1.json
  def show
  end




  # GET /movies/new
  def new
    @movie = Movie.new
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie = Movie.new(movie_params)
    
    respond_to do |format|
      if @movie.save
       add_genres
       add_categories
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }

      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        add_genres
        add_categories
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }

      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      #params.require(:movie).permit(:name, :score, :ranked, :episodes, :status, :rating, :poster, :summary, :genre_ids => [])
      params.require(:movie).permit(:name, :score, :ranked, :episodes, :status, :rating, :poster, :summary, :genre_ids => [], :category_ids => [])
    end

    def add_genres()
      params[:movie][:genre_ids].each {|genre| 
        count = MovieGenre.where("movie_id = ?", @movie.id).where("genre_id = ?", genre).count
        if count == 0 then MovieGenre.create(:movie_id => @movie.id, :genre_id => genre) 
        end
      }
    end  

       def add_categories()
    # @categories = params[:movie][:categories_name]
       if params[:movie][:category_ids]
       params[:movie][:category_ids].each do |c|
           if not @movie.categories.find(c)
             MovieCategory.create(:movie_id => @movie.id, :category_id => c)
           end
         end
       end
     end
    
end
