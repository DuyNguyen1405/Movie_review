class CreateMovieActors < ActiveRecord::Migration
  def change
    create_table :movie_actors do |t|
    	t.integer :movie_id
    	t.integer :actor_id
      t.timestamps null: false
 
    end

    add_index :movie_actors, :movie_id
    add_index :movie_actors, :actor_id
  end
end
