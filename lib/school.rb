class School
  attr_accessor :grade
  attr_reader :school, :roster, :add_student
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

    def grade(number)
      @roster[number]
    end
    
    def sort 
      @roster.each do |grade, name|
        @roster[grade] = name.sort
      end
    end
end