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
#  tenant_id          :integer
#

require 'spec_helper'

describe Salary do
  before(:each) do 
    @ys = YearlySalary.new(:payment_ammount => 60000)
    @ms = MonthlySalary.new(:payment_ammount => 5000)
  end
  it "should calculate total yearly salary of multiple salaries" do
    Salary.calculate_yearly_salary([@ys, @ms]).should eq(120000)
  end
  it "should calculate total monthly salary of multiple salaries" do
    Salary.calculate_monthly_salary([@ys, @ms]).should eq(10000)
  end
end
