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

class Salary < ActiveRecord::Base
  belongs_to :tenant
  attr_accessible :number_of_payments, :payment_ammount, :type
  def self.calculate_yearly_salary(salaries)
    salaries.inject(0) do |total_salary, salary|
      total_salary += salary.calculate_yearly_salary
    end    
  end  
  def self.calculate_monthly_salary(salaries)
    salaries.inject(0) do |total_salary, salary|
      total_salary += salary.calculate_monthly_salary
    end
  end
end
