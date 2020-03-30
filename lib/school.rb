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
  def grade(level)
    @roster.each do |x, y|
      @roster[x] = y.sort 
      end 
      @roster
    end
end