class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.datetime :date_of_birth
      t.string :avatar
     
    end
  end
end
