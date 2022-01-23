class AddPasswordToUser < ActiveRecord::Migration[6.1]
  def change
    # add_column :products, :part_number, :string
    add_column :users, :password, :string, null: false
    add_index :users, :username,  unique: true
  end
end
