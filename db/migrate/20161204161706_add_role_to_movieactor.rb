class AddRoleToMovieactor < ActiveRecord::Migration
  def change
    add_column :movie_actors, :role, :string
   
  end
end
