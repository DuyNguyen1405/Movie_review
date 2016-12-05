class DeleteScoreFromReview < ActiveRecord::Migration
  def change
  	remove_column :reviews, :score
  end
end
