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

class YearlySalary < Salary
  def initialize(attrs = nil, options = {})
    attrs ||= {}
    attr_with_defaults = { :number_of_payments => 1 }.merge(attrs) 
    super(attr_with_defaults)
  end
  def calculate_yearly_salary
    self.payment_ammount    
  end
  def calculate_monthly_salary
    calculate_yearly_salary/12
  end
end
