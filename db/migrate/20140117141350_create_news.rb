class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :headline
      t.text :content
      t.text :tags
      t.string :image
      t.string :news_by
      t.datetime :date

      t.timestamps
    end
  end
end
