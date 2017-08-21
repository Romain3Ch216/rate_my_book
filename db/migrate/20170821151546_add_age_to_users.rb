class AddAgeToUsers < ActiveRecord::Migration[5.1]
  def change
    add-column :users, :age, :integer
  end
end
