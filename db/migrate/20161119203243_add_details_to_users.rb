class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :address, :string
    add_column :users, :workplace, :string
    add_column :users, :introduce, :string
    add_column :users, :role, :string
    add_column :users, :sex, :string
  end
end
