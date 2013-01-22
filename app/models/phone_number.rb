class PhoneNumber < ActiveRecord::Base
  attr_accessible :number

  def formatted_number
    "(#{self.number[0..2]}) #{self.number[3..5]}-#{self.number[6..9]}"
  end
end
