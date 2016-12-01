class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :score
    end
  end
end
