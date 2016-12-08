class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  # GET /searches
  # GET /searches.json
  def index
    @option = params[:option].to_i
    case @option
    when 0
      @searches = Movie.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    when 1
      @searches = Actor.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    else 
      @searches = Search.all
    end
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
  end

  # GET /searches/new
  def new
    
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  # POST /searches.json
  def create
    @movies = Movie.search(params[:search][:movie])

    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: 'Search was successfully created.' }
        format.json { render :show, status: :created, location: @search }
      else
        format.html { render :new }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { render :show, status: :ok, location: @search }
      else
        format.html { render :edit }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url, notice: 'Search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def live_search
    @movies = Movie.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    respond_to do |format|
      format.js
    end
  end

  def category_search
    @categories = Category.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
    respond_to do |format|
      format.js
    end
  end

  def actor_search
     @actors = Actor.where("lower(name) LIKE ?", '%' + params[:q].downcase + '%')
     respond_to do |format|
       format.js
     end
   end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.fetch(:search, {})
    end
end
