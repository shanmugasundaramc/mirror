class CreateFuns < ActiveRecord::Migration
  def change
    create_table :funs do |t|
      #Creates a column called id which Autoincrement, NOT null, UNIQUE
      t.string :title
      t.text :content
      t.string :made_by
      t.datetime :last_seen
      t.string :image

      t.timestamps #is a method which creates created_at and updated_at columns
    end
  end
end
