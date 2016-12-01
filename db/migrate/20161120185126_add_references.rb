class AddReferences < ActiveRecord::Migration
  def change
  	add_reference :comments, :user, index: true, foreign_key: true
  	add_reference :comments, :review, index: true, foreign_key: true
  	add_reference :reviews, :user, index: true, foreign_key: true
  	add_reference :actors, :gallery, index: true, foreign_key: true
  	add_reference :musics, :gallery, index: true, foreign_key: true
  	add_reference :images, :gallery, index: true, foreign_key: true
  	add_reference :movies, :gallery, index: true, foreign_key: true
  	add_reference :videos, :movie, index: true, foreign_key: true
  	add_reference :reviews, :movie, index: true, foreign_key: true
  end
end
