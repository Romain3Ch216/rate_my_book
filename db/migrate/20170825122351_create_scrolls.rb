class CreateScrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :scrolls do |t|
      t.integer :scroll_value
      t.references :user, foreign_key: true
      t.references :chapter, foreign_key: true

      t.timestamps
    end
  end
end
