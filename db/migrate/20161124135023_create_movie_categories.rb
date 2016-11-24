class CreateMovieCategories < ActiveRecord::Migration
  def change
    create_table :movie_categories do |t|
    	t.integer :movie_id
    	t.integer :category_id
    	t.timestamps null: false
    end
  end
end
