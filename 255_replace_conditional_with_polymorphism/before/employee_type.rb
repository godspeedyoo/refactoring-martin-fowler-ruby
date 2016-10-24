class EmployeeType
  ENGINEER = 0
  SALESMAN = 1
  MANAGER = 2

  # abstract class to be used to define state on Employee objects
  def new_type(code)
    case code
    when ENGINEER
      Engineer.new
    when SALESMAN
      Salesman.new
    when MANAGER
      Manager.new
    else
      raise IncorrectEmployeeCode < StandardError
    end
  end
  
  # subclasses may override
  def get_type_code
  end
end
