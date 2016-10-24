class Employee
  # Employee types will eventually get promoted, so we cannot directly use polymorphism for emplyee types because the
  # subclasses will eventually change as a promotion happens
  ENGINEER = 0
  SALESMAN = 1
  MANAGER = 2

  attr_reader :monthly_salary, :bonus, :commission

  def initialize(args)
    @type = args[:type]
    @monthly_salary = args[:monthly_salary]
    @bonus = args[:bonus]
    @commission = args[:commission]
  end

  def pay_amount
    case @type
    when Employee::ENGINEER
      monthly_salary
    when Employee::SALESMAN
      monthly_salary + commission
    when Employee::MANAGER
      monthly_salary + bonus
    else
      raise IncorrectEmployeeError < StandardError
    end
  end

end
