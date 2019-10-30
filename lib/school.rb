class School

    attr_accessor :roster, :school_name
    

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, level)
        roster[level] ||= []
        roster[level] << student
    end


    def grade(level)
        self.roster[level]
    end

    def sort
        hash ={}
        roster.each { |level, student|
          hash[level] = student.sort
        }
        hash
    end
 
end