# code here!
require "pry"

class School
    attr_reader :name
    attr_accessor :roster#, :student_name, :student_grade

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        # @student_name = student_name
        # @student_grade = student_grade
        @roster[student_grade] ||= []
        @roster[student_grade] << student_name
        # binding.pry
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_list = {}
        @roster.each do |k, v|
            sorted_list[k] = v.sort
        end

        sorted_list
    end
end
