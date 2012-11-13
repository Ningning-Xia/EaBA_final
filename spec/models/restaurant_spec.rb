# == Schema Information
#
# Table name: restaurants
#
#  id            :integer          not null, primary key
#  camis         :string(255)
#  dba           :string(255)
#  boro          :string(255)
#  building      :string(255)
#  street        :string(255)
#  zipcode       :string(255)
#  phone         :string(255)
#  cuisine       :string(255)
#  insp_date     :string(255)
#  action        :string(255)
#  violcode      :string(255)
#  score         :string(255)
#  current_grade :string(255)
#  grade_date    :string(255)
#  record_date   :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe Restaurant do
  pending "add some examples to (or delete) #{__FILE__}"
end
