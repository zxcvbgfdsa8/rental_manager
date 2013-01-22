require 'spec_helper'

describe PhoneNumber do
  it "should format correctly" do
    number = PhoneNumber.new({:number => "1234567890" })
    number.formatted_number.should eq("(123) 456-7890")
  end
end
