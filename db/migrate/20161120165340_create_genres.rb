class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :name
    end
    Genre.create(:name => "Action")
    Genre.create(:name => "Adventure")
    Genre.create(:name => "Comedy")
    Genre.create(:name => "Ecchi")
    Genre.create(:name => "Fantasy")
    Genre.create(:name => "Historical")
    Genre.create(:name => "Horror")
    Genre.create(:name => "Josei")
    Genre.create(:name => "Magic")
    Genre.create(:name => "Mecha")
    Genre.create(:name => "Military")
    Genre.create(:name => "Music")
    Genre.create(:name => "Mystery")
    Genre.create(:name => "Psychological")
    Genre.create(:name => "Romance")
    Genre.create(:name => "School")
    Genre.create(:name => "Sci-fi")
    Genre.create(:name => "Seinen")
    Genre.create(:name => "Shoujo")
    Genre.create(:name => "Shounen")
    Genre.create(:name => "Slice of Life")
    Genre.create(:name => "Space")
    Genre.create(:name => "Sport")
    Genre.create(:name => "Supernatural")
    Genre.create(:name => "Thriller")
  end
end
