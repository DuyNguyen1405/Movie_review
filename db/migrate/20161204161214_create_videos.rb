class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link
      t.integer :movie_id

      t.timestamps null: false
    end
  end
end
