class Course
  attr_reader :title, :advanced

  def initialize(title, advanced=false)
    @title = title
    @advanced = advanced
  end
end
