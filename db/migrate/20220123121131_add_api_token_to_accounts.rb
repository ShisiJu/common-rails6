class AddAPITokenToAccounts < ActiveRecord::Migration[6.1]
  def change
    add_column :accounts, :api_token, :string, default: -> { 'gen_random_uuid()' }
    add_index :accounts, :api_token, unique: true
  end
end
