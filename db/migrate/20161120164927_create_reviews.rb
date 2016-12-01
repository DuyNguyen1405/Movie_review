class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.datetime :add_at
      t.integer :score

      t.timestamps null: false
    end
  end
end
