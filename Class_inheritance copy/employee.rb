class Employee 

    attr_accessor :name, :title, :salary

    def initialize(name, title, salary, boss=nil)
        @name = name 
        @title = title 
        @salary = salary
        boss.worker << self if !boss.nil?
    end

    def bonus(multi)
       bonus = @salary * multi
       bonus 
    end

end