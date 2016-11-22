class AddDetailToMovie < ActiveRecord::Migration
  def change
  	create_table :movies do |t|
      t.string :name
      t.timestamps null: false
    end
  	add_column :movies, :score, :float
  	add_column :movies, :ranked, :integer
  	add_column :movies, :episodes, :integer
  	add_column :movies, :status, :string
  	add_column :movies, :rating, :string
  	add_column :movies, :summary, :text
  end
end