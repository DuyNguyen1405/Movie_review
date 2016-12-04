class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.datetime :date_of_birth

      t.timestamps null: false
    end

    create_table :actor_images do |t|
    	t.integer :actor_id
    	t.integer :image_id
    end

    add_index :actor_images, :actor_id
    add_index :actor_images, :image_id

  end
end
