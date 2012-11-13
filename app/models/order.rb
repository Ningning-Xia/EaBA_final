# == Schema Information
#
# Table name: orders
#
#  id                 :integer          not null, primary key
#  client_user_id     :integer
#  restaurant_user_id :integer
#  content            :string(255)
#  address            :string(255)
#  zipcode            :string(255)
#  phone              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Order < ActiveRecord::Base
  attr_accessible :address, :client_user_id, :content, :phone, :restaurant_user_id, :zipcode
end
