class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title, null: false
      t.text :concept
      t.text :rule
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
