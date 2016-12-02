class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :movie_images do |t|
    	t.integer :movie_id
    	t.integer :image_id

      t.timestamps null: false
    end

    add_index :movie_images, :movie_id
    add_index :movie_images, :image_id
  end
end
