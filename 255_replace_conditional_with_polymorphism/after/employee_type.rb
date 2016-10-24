class EmployeeType
  ENGINEER = 0
  SALESMAN = 1
  MANAGER = 2

  def self.new_type(type)
    case type
    when ENGINEER
      Engineer.new
    when SALESMAN
      Salesman.new
    when MANAGER
      Manager.new
    else
      raise IncorrectEmployeeTypeError < StandardError
    end
  end

  # subclasses may override
  def pay_amount
  end

  def get_type_code
  end

end
