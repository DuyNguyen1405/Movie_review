class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.string :date_of_birth
      t.string :avatar

      t.timestamps null: false
    end
  end
end
