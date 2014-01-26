class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :name
      t.text :content
      t.integer :rating
      t.references :phoenix

      t.timestamps
    end
    add_index :reviews, :phoenix_id
  end
end
