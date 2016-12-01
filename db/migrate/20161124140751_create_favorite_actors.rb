class CreateFavoriteActors < ActiveRecord::Migration
  def change
    create_table :favorite_actors do |t|
    	t.integer :user_id
    	t.integer :actor_id
      t.timestamps null: false
    
    end

    add_index :favorite_actors, :user_id
    add_index :favorite_actors, :actor_id

  end
end
