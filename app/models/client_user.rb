class ClientUser < ActiveRecord::Base
  attr_accessible :account_name, :address, :birthdate, :gender, :phone, :real_name, :zipcode
end
