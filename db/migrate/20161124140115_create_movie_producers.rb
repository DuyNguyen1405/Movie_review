class CreateMovieProducers < ActiveRecord::Migration
  def change
    create_table :movie_producers do |t|
    	t.integer :movie_id
    	t.integer :producer_id
      t.timestamps null: false
    end
  end
end
