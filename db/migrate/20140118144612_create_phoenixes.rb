class CreatePhoenixes < ActiveRecord::Migration
  def change
    create_table :phoenixes do |t|
      t.string :fact
      t.text :content
      t.string :made_by
      t.string :image
      t.integer :no_views
      t.datetime :last_seen

      t.timestamps
    end
  end
end
