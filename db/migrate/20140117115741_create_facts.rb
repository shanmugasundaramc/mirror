 class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.string :name
      t.string :heading
      t.string :content
      t.string :made_by
      t.datetime :last_seen
      t.string :image
      t.decimal :cost

      t.timestamps
    end
  end
end
