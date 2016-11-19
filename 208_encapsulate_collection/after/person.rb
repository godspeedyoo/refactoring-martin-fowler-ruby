class Person
  attr_reader :name
  # remove the attr_accessor for courses

  def initialize(args)
    @name = args[:name]
    # expects an array of course objects
    @courses = args[:courses] || []
  end

  def add_course(course)
    @courses << course
  end

  def remove_course(course)
    @course.delete(course)
  end

  def get_courses
    # SomeArrayHelper.deepCopy(@courses)
    # return a deep copy of the courses array
  end

  def number_of_advanced_courses
    @courses.count do |course|
      course.advanced
    end
  end
end


# A person with courses is initialized by
# joe = Person.new(name: 'Joe')
# joe.add_course(Course.new('math', true))
# joe.add_course(Course.new('science'))

# Finding out how many advanced courses joe has might look like:
# joe.number_of_advanced_courses
