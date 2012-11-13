class CreateRestaurantUsers < ActiveRecord::Migration
  def change
    create_table :restaurant_users do |t|
      t.string :license_no
      t.string :phone
      t.integer :restaurant_id
      t.string :account_name
      t.string :real_name

      t.timestamps
    end
  end
end
