class Restaurant < ActiveRecord::Base
  attr_accessible :action, :boro, :building, :camis, :cuisine, :current_grade, :dba, :grade_date, :insp_date, :phone, :record_date, :score, :street, :violcode, :zipcode
end
