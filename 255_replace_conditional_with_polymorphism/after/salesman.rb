class Salesman < EmployeeType

  def pay_amount(employee)
    employee.monthly_salary + employee.commission
  end

end
