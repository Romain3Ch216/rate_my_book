class AddScoreToBooks < ActiveRecord::Migration[5.1]
  def change
  add_column :books, :score, :integer
  end
end
