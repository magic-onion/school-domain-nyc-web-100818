# code here!
require 'pry'
class School
  attr_accessor :roster

def initialize(name)
  @name = name
  @roster = {}
  end


  def add_student(student_name, grade)
    if @roster[grade] == nil
      self.roster[grade] = []
      self.roster[grade] << student_name
    else
      self.roster[grade] << student_name
    end
  end

  def grade(grade)
    self.roster.each do |k,v|
      if k == grade
      return self.roster[k]
    end
  end
end

def sort
  self.roster.each do |grade, student|
    self.roster[grade] = student.sort
  end
end

end
