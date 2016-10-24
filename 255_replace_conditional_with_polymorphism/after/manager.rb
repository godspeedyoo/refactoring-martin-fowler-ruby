class Manager < EmployeeType

  def pay_amount(employee)
    employee.monthly_salary + employee.bonus
  end

end
