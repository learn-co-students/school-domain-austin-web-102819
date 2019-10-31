class School
    attr_accessor :roster, :name, :grade

   
    def initialize(roster)
        @roster = {}
        @name = name
    end    

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end      
 
    def grade(student_grade)
        roster[student_grade]
    end    
    
    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort 
        end
        return sorted    
    end     

end