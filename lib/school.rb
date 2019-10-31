# code here!
class School

    # @@roster = {}

    def initialize(school_name)
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def roster
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each{|grade, names| @roster[grade] = names.sort}
    end

end