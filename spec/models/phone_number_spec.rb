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

require 'spec_helper'

describe PhoneNumber do
  it "should format correctly" do
    number = PhoneNumber.new({:number => "1234567890" })
    number.formatted_number.should eq("(123) 456-7890")
  end
end
