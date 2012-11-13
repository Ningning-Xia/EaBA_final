class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :camis
      t.string :dba
      t.string :boro
      t.string :building
      t.string :street
      t.string :zipcode
      t.string :phone
      t.string :cuisine
      t.string :insp_date
      t.string :action
      t.string :violcode
      t.string :score
      t.string :current_grade
      t.string :grade_date
      t.string :record_date

      t.timestamps
    end
  end
end
