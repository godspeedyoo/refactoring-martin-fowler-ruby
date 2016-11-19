class Person
  attr_reader :name
  attr_accessor :courses

  def initialize(args)
    @name = args[:name]
    # expects an array of course objects
    @courses = args[:courses] || []
  end

end


# A person with courses is initialized by
# joe = Person.new(name: 'Joe', courses:[Course.new('math', true),Course.new('science')])

# Finding out how many advanced courses joe has might look like:
# joe.courses.count do |course|
#   course.advanced
# end

# With attr_accessor and without abstracting away how to work with this courses
# collection, you will need to know the implementation details.
