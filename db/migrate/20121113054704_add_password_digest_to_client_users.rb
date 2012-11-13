class AddPasswordDigestToClientUsers < ActiveRecord::Migration
  def change
    add_column :client_users, :password_digest, :string
  end
end
