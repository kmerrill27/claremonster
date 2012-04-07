class AddUserIDtoWishes < ActiveRecord::Migration
  def up
    add_column :wishes, :user_id, :integer
  end

  def down
    remove_column :wishes, :user_id
  end
end
