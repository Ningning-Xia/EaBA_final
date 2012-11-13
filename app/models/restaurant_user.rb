# == Schema Information
#
# Table name: restaurant_users
#
#  id            :integer          not null, primary key
#  license_no    :string(255)
#  phone         :string(255)
#  restaurant_id :integer
#  account_name  :string(255)
#  real_name     :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class RestaurantUser < ActiveRecord::Base
  attr_accessible :account_name, :license_no, :phone, :real_name, :restaurant_id
end
