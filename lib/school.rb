require 'pry'

class School
    attr_accessor :roster, :add_student, :grade

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade) 
        if @roster[grade]
        @roster[grade] << name
        else
         @roster[grade] = []
         @roster[grade] << name
        end
    end

    def grade(grade)
        if @grade = grade
           @roster[grade].reject {|value| value == grade}
        end
    end

    def sort
        self.roster.select {|grade, students|
        students.sort!
    }
    end

end