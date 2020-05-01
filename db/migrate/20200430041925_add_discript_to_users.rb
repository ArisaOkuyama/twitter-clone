class AddDiscriptToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :discript, :string
  end
end
