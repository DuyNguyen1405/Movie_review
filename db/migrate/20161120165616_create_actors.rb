class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.datetime :date_of_birth
      t.string :avatar

    end
  end
end
