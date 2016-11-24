class CreateFavoriteMovies < ActiveRecord::Migration
  def change
    create_table :favorite_movies do |t|
    	t.integer :user_id
    	t.integer :movie_id
      t.timestamps null: false
    end
  end
end