# == Schema Information
#
# Table name: salaries
#
#  id                 :integer          not null, primary key
#  type               :string(255)
#  payment_ammount    :decimal(, )
#  number_of_payments :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'spec_helper'

describe MonthlySalary do
  before(:each) do
    @attrs = { :payment_ammount => 5000 }
  end
  it "should have twelve payment per year" do
    salary = MonthlySalary.new
    salary.number_of_payments.should eq(12)
  end
  it "should have a monthly salary type" do
    salary = MonthlySalary.new
    salary.type.should eq("MonthlySalary")
  end
  it 'should calculate a correct yearly salary' do
    salary = MonthlySalary.create!(@attrs)
    salary.calculate_yearly_salary.should eq(60000)
  end
  it 'should calculate a correct monthly salary' do
    salary = MonthlySalary.create!(@attrs)
    salary.calculate_monthly_salary.should eq(5000)
  end
end
