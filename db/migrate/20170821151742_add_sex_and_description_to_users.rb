class AddSexAndDescriptionToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sex, :string
    add_column :users, :description, :text
  end
end
