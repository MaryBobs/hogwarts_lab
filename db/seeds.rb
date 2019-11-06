require_relative('../models/student.rb')

student1 = Student.new (
  {
    "first_name" => "Harry",
    "last_name" => "Potter",
    "house" => "Gryffindor",
    "age" => 10
  }
)

student2 = Student.new(
  {
    "first_name" => "Luna",
    "last_name" => "Lovegood",
    "house" => "Gryffindor",
    "age" => 12
  }
)

student1.save()
student2.save()
