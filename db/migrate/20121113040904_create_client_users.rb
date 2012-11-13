class CreateClientUsers < ActiveRecord::Migration
  def change
    create_table :client_users do |t|
      t.string :gender
      t.date :birthdate
      t.string :zipcode
      t.string :address
      t.string :phone
      t.string :account_name
      t.string :real_name

      t.timestamps
    end
  end
end
