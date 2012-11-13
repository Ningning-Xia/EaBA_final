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

class Administrator < ActiveRecord::Base
  attr_accessible :account_name, :real_name
end
