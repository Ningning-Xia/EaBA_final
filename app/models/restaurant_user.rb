class RestaurantUser < ActiveRecord::Base
  attr_accessible :account_name, :license_no, :phone, :real_name, :restaurant_id
end
