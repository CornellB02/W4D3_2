require_relative "employee.rb"


class Manager < Employee

    attr_accessor :worker

    def initialize(name, title, salary, boss=nil)
        super 
        @worker = []
    end

    def hire_employee(employee)
        if !@worker.include?(employee)
            @worker << employee
        end
    end

    def bonus(multiplier)
        all_employees = [] # Object emplyee
        @employees.each do |employee|
          if employee.is_a?(Manager)
            all_employees += employee.employees
          end
        end
    
        all_employees.inject(self.salary) { |sum, employee| sum + employee.salary } * multiplier
      end
    
    end
    
end



# p ned.bonus(5) # => 500_000
# p darren.bonus(4) # => 88_000
# p david.bonus(3) # => 30_000