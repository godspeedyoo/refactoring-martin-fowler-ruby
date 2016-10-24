require_relative '../after/employee.rb'

engineer = Employee.new({type: EmployeeType::ENGINEER, monthly_salary: 2000})
manager = Employee.new({type: EmployeeType::MANAGER, monthly_salary: 3000, bonus: 500})
salesman = Employee.new({type: EmployeeType::SALESMAN, monthly_salary: 1900, commission: 200})

p engineer.pay_amount == 2000
p manager.pay_amount == 3500
p salesman.pay_amount == 2100
