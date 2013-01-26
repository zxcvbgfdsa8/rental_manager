# == Schema Information
#
# Table name: tenants
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  middle_name :string(255)
#  last_name   :string(255)
#  email       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tenant < ActiveRecord::Base
  has_many :salaries
  has_many :phone_numbers
  attr_accessible :email, :first_name, :last_name, :middle_name
end
