require_relative('../models/student.rb')
require_relative('../models/house.rb')

house1 = House.new({"name" => "Gryffindor", "url" => "/public/images/Gryffindor"})
house2 = House.new({"name" => "Ravenclaw", "url" => "/public/images/Ravenclaw"})
house3 = House.new({"name" => "Slytherin", "url" => "/public/images/Slytherin"})
house4 = House.new({"name" => "Hufflepuff", "url" => "/public/images/Hufflepuff"})

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new (
  {
    "first_name" => "Harry",
    "last_name" => "Potter",
    "house_id" => 1,
    "age" => 10
  }
)

student2 = Student.new(
  {
    "first_name" => "Draco",
    "last_name" => "Malfoy",
    "house_id" => 3,
    "age" => 12
  }
)

student1.save()
student2.save()
