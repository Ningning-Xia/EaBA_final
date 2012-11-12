class Order < ActiveRecord::Base
  attr_accessible :address, :client_user_id, :content, :phone, :restaurant_user_id, :zipcode
end
