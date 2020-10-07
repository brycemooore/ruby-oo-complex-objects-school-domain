# code here!
require 'pry'

class School

    attr_accessor :roster

    def initialize(name)
        @school_name = name
        @roster = {}
    end 

    def add_student(name, grade)
        self.roster[grade] ||= []
        self.roster[grade] << name
    end    

    def grade(grade)
        return self.roster[grade]
    end

    def sort
        self.roster.each{|grade, students|
            students.sort!
        }
        self.roster.sort_by{|grade, sudents| grade}.to_h
    end

end 