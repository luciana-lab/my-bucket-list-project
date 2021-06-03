class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :description
      t.string :to_do
      t.string :image
      t.integer :user_id
    end
  end
end
