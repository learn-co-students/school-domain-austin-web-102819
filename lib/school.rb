class School
        attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
       

    end  

    def add_student(name, grade)
        if roster[grade]
            roster[grade] << name
        else 
            roster[grade]
            roster[grade] = []
            roster[grade] <<name
        end 
    end 

    def show_roster
        p @roster
    end 

    def grade(grade)
        roster[grade] 
    end 

    def sort
        roster.map { |k, v| [k, v.sort]}.to_h
    end 


end 

school = School.new("Bayside High School")
