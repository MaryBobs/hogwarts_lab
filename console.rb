require('pry-byebug')
require_relative('./models/student.rb')
require_relative('./models/house.rb')

student1 = Student.new (
  {
    "first_name" => "Harry",
    "last_name" => "Potter",
    "house_id" => 1,
    "age" => 10
  }
)


binding.pry
nil
