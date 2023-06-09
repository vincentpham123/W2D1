class Bootcamp

  #initial values
  def initialize(name,slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @grades = Hash.new{|h,k| h[k]=[]}
    @teachers=[]
    @students=[]
  end
  #simle getters
  def name
    @name 
  end
  def slogan
    @slogan
  end
  def teachers
    @teachers
  end
  def students
    @students
  end
  def student_capacity
    @student_capacity
  end
  #class setters
  def hire(teacher)
    self.teachers<<teacher
  end

  def enroll(student)
    if self.students.length<self.student_capacity
        self.students<<student
        return true
    else 
        return false
    end
  end

  def enrolled?(name)
        self.students.any? {|student| name==student}
  end

  # part 2

  def student_to_teacher_ratio
    #return ratio of students to the amount of teachers, ronded to nearest one
    ratio= self.students.length/self.teachers.length
    return ratio.round()
  end

  def add_grade(student, number)
    if enrolled?(student)
      @grades[student] << number
      return true
    else
      return false
    end
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if !students.include?(student) || @grades[student].length==0
            return nil
        else
            @grades[student].sum/@grades[student].length
        end
    end



end