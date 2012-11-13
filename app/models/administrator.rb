class Administrator < ActiveRecord::Base
  attr_accessible :account_name, :real_name
end
