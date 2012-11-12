class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_user_id
      t.integer :restaurant_user_id
      t.string :content
      t.string :address
      t.string :zipcode
      t.string :phone

      t.timestamps
    end
  end
end
