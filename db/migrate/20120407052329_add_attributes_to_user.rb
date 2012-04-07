class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :displayname, :string
    add_column :users, :year, :integer
    add_column :users, :school, :string
  end
end
