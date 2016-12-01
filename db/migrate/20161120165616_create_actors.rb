class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.datetime :date_of_birth

      t.timestamps null: false
    end
  end
end
