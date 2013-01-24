class Tenant < ActiveRecord::Base
  has_many :salaries
  has_many :phone_numbers
  attr_accessible :email, :first_name, :last_name, :middle_name
end
