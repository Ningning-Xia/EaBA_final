class AddRememberTokenToClientUsers < ActiveRecord::Migration
  def change
	  add_column :client_users, :remember_token, :string
	  add_index :client_users, :remember_token
  end
end
