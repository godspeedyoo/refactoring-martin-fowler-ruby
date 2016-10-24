require_relative 'employee_type'
require_relative 'salesman'
require_relative 'manager'
require_relative 'engineer'

class Employee
  attr_reader :type, :monthly_salary, :bonus, :commission

  def initialize(args)
    @type = EmployeeType.new_type(args[:type])
    @monthly_salary = args[:monthly_salary]
    @bonus = args[:bonus]
    @commission = args[:commission]
  end

  def pay_amount
    type.pay_amount(self)
  end

end
