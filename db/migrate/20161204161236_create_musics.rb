class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :link
      t.integer :movie_id

      t.timestamps null: false
    end
  end
end
