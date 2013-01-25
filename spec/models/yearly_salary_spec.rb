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

describe YearlySalary do
  before(:each) do
    @tenant = Factory(:tenant)
    @attrs = { :payment_ammount => 60000 }
  end
  it "should have one payment per year" do
    yearly_salary = YearlySalary.new
    yearly_salary.number_of_payments.should eq(1)
  end
  it "should have a yearly salary type" do
    yearly_salary = YearlySalary.new
    yearly_salary.type.should eq("YearlySalary")
  end
  it 'should calculate a correct yearly salary' do
    yearly_salary = YearlySalary.create!(@attrs)
    yearly_salary.calculate_yearly_salary.should eq(60000)
  end
  it 'should calculate a correct monthly salary' do
    yearly_salary = YearlySalary.create!(@attrs)
    yearly_salary.calculate_monthly_salary.should eq(5000)
  end
  it 'should know who its tenant is' do
    s = YearlySalary.create!(@attrs)
    s.tenant_id = @tenant.id
    s.tenant.first_name.should eq("James")
  end

end
