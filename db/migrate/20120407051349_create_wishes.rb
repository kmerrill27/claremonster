class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :description
      t.integer :threshold
      t.text :deal

      t.timestamps
    end
  end
end
