class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :day
      t.string :url

      t.timestamps
    end
  end
end
