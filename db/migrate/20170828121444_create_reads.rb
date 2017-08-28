class CreateReads < ActiveRecord::Migration[5.1]
  def change
    create_table :reads do |t|
      t.references :user, foreign_key: true
      t.references :chapter, foreign_key: true
      t.boolean :is_read, default: false

      t.timestamps
    end
  end
end
