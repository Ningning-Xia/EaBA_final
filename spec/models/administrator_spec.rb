# == Schema Information
#
# Table name: administrators
#
#  id           :integer          not null, primary key
#  account_name :string(255)
#  real_name    :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Administrator do
  pending "add some examples to (or delete) #{__FILE__}"
end
