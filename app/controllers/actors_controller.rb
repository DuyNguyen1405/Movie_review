class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]

  # GET /actors
  # GET /actors.json
  def index
    @actors = Actor.all
  end

  # GET /actors/1
  # GET /actors/1.json
  def show
  end

  # GET /actors/new
  def new
    if params[:commit] != "Add"
    @actor = Actor.new
    end
  end

  # GET /actors/1/edit
  def edit
  end

  # POST /actors
  # POST /actors.json
  def create
    if params[:commit] != "Add"  
      @actor = Actor.new(actor_params)
       respond_to do |format|
          if @actor.save
            format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
            format.json { render :show, status: :created, location: @actor }
          else
            format.html { render :new }
            format.json { render json: @actor.errors, status: :unprocessable_entity }
          end
        end
    else   
      @info = Actor.find_by("name = ?", params[:name])
      if !@info
        redirect_to "/movies/#{params[:movie_id]}", notice: 'Actor not found.'
      else
        @id = @info.id
        @actor = MovieActor.new(:actor_id => @id, :movie_id => params[:movie_id], :role => params[:role])
      if @actor.save
       redirect_to "/movies/#{params[:movie_id]}", notice: 'Role was successfully added.'

      end
      end
      
    end
       
    end


  # PATCH/PUT /actors/1
  # PATCH/PUT /actors/1.json
  def update
    respond_to do |format|
      if @actor.update(actor_params)
        format.html { redirect_to @actor, notice: 'Actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor }
      else
        format.html { render :edit }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    @actor.destroy
    respond_to do |format|
      format.html { redirect_to actors_url, notice: 'Actor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_params
      params.require(:actor).permit(:name, :date_of_birth, :avatar)
    end

   
end
