class CreateMovieCategories < ActiveRecord::Migration
  def change
    create_table :movie_categories do |t|
    	t.integer :movie_id
    	t.integer :category_id
    	t.timestamps null: false
    end

    add_index :movie_categories, :movie_id
    add_index :movie_categories, :category_id
  end
end
