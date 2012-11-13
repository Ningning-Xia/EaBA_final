class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :account_name
      t.string :real_name

      t.timestamps
    end
  end
end
