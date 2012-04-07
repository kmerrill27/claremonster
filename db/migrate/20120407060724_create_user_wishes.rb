class CreateUserWishes < ActiveRecord::Migration
  def change
    create_table :user_wishes do |t|
      t.integer :user_id
      t.integer :wish_id
      t.boolean :proposed
      t.boolean :upvoted

      t.timestamps
    end
  end
end
