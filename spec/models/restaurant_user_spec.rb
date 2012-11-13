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

require 'spec_helper'

describe RestaurantUser do
  pending "add some examples to (or delete) #{__FILE__}"
end
