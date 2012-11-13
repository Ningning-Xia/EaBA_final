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

require 'spec_helper'

describe Order do
  pending "add some examples to (or delete) #{__FILE__}"
end
