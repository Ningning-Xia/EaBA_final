# == Schema Information
#
# Table name: client_users
#
#  id           :integer          not null, primary key
#  gender       :string(255)
#  birthdate    :date
#  zipcode      :string(255)
#  address      :string(255)
#  phone        :string(255)
#  account_name :string(255)
#  real_name    :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe ClientUser do
  pending "add some examples to (or delete) #{__FILE__}"
end
