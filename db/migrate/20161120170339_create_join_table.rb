class CreateJoinTable < ActiveRecord::Migration
  def change
  	create_join_table :movies, :categories, column_option: {null: true}
  	create_join_table :movies, :genres, column_option: {null: true}
  	create_join_table :movies, :producers, column_option: {null: true}
  	create_join_table :movies, :actors, column_option: {null: true} do |t|
  		t.string :character
  	end
  	create_join_table :movie, :user, table_name: :favorite_movie
  	create_join_table :actor, :user, table_name: :favorite_actor
  end
end
