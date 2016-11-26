class CreateFavoriteMovies < ActiveRecord::Migration
  def change
    create_table :favorite_movies do |t|
    	t.integer :user_id
    	t.integer :movie_id
    
    end

    add_index :favorite_movies, :user_id
    add_index :favorite_movies, :movie_id
     
  end
end
