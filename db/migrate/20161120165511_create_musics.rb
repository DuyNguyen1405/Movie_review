class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
    
      t.string :link

      
    end
  end
end
