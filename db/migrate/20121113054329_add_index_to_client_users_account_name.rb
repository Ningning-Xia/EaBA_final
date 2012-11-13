class AddIndexToClientUsersAccountName < ActiveRecord::Migration
  def change
	  add_index :client_users, :account_name, unique: true
  end
end
