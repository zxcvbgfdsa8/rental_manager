# == Schema Information
#
# Table name: phone_numbers
#
#  id         :integer          not null, primary key
#  number     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tenant_id  :integer
#

class PhoneNumber < ActiveRecord::Base
  belongs_to :tenant
  attr_accessible :number

  def formatted_number
    "(#{self.number[0..2]}) #{self.number[3..5]}-#{self.number[6..9]}"
  end
end
