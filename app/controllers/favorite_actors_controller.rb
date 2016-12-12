class FavoriteActorsController < ApplicationController
  before_action :set_favorite_actor, only: [:show, :edit, :update, :destroy]

  # GET /favorite_actors
  # GET /favorite_actors.json
  def index
    @favorite_actors = FavoriteActor.all
  end

  # GET /favorite_actors/1
  # GET /favorite_actors/1.json
  def show
  end

  # GET /favorite_actors/new
  def new
    @favorite_actor = FavoriteActor.new
  end

  # GET /favorite_actors/1/edit
  def edit
  end

  # POST /favorite_actors
  # POST /favorite_actors.json
  def create
    @favorite_actor = FavoriteActor.new(user_id: params[:user_id], actor_id: params[:actor_id])
    respond_to do |format|
      if @favorite_actor.save
        format.js
      else
        format.html { render :new }
        format.json { render json: @favorite_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_actors/1
  # PATCH/PUT /favorite_actors/1.json
  def update
    respond_to do |format|
      if @favorite_actor.update(favorite_actor_params)
        format.html { redirect_to @favorite_actor, notice: 'Favorite actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_actor }
      else
        format.html { render :edit }
        format.json { render json: @favorite_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_actors/1
  # DELETE /favorite_actors/1.json
  def destroy
    @favorite_actor = FavoriteActor.find(params[:id])
    @favorite_actor.destroy
    respond_to do |format|
      # format.html { redirect_to favorite_actors_url, notice: 'Favorite actor was successfully destroyed.' }
      # format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_actor
      @favorite_actor = FavoriteActor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_actor_params
      params.fetch(:favorite_actor, {})
    end
end