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

class ClientUser < ActiveRecord::Base
  attr_accessible :account_name, :address, :birthdate, :gender, :phone, :real_name, :zipcode, :password, :password_confirmation

  has_secure_password

  before_save { |client_user| client_user.account_name.downcase }

  GENDERS = [:male, :female]

  validates :account_name, presence: true, length: { minimum:4 }, 
	  uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum:4 }
  validates :password, presence: true
end
