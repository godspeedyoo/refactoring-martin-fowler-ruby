class Employee
  attr_reader :type, :monthly_salary, :bonus, :commission

  def initialize(type)
    @type = EmployeeType.new_type(type)
    @monthly_salary = args[:monthly_salary]
    @bonus = args[:bonus]
    @commission = args[:commission]
  end

  def get_type
    type.get_type_code
  end

  def pay_amount
    case get_type
    when EmployeeType::ENGINEER
      monthly_salary
    when EmployeeType::SALESMAN
      monthly_salary + commission
    when EmployeeType::MANAGER
      monthly_salary + bonus
    else
      raise IncorrectEmployeeError < StandardError
    end
  end

end
