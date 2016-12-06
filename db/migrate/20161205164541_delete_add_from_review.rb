class DeleteAddFromReview < ActiveRecord::Migration
  def change
  	remove_column :reviews, :add_at
  	remove_column :movies, :score
  	remove_column :movies, :rating
  end
end
