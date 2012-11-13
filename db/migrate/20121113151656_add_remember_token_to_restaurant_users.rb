class AddRememberTokenToRestaurantUsers < ActiveRecord::Migration
  def change
	  add_column :restaurant_users, :remember_token, :string
	  add_index :restaurant_users, :remember_token
  end
end
