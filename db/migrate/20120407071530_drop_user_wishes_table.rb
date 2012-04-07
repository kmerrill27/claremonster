class DropUserWishesTable < ActiveRecord::Migration
  def up
   drop_table :user_wishes
  end

  def down
  end
end
