# == Schema Information
#
# Table name: client_to_restaurant_reviews
#
#  id            :integer          not null, primary key
#  client_id     :integer
#  restaurant_id :integer
#  review        :string(255)
#  score         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe ClientToRestaurantReview do
  pending "add some examples to (or delete) #{__FILE__}"
end
