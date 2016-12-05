class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :link
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps null: false
    end
  end
end
