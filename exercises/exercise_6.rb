require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Harshbir", last_name: "Singh", hourly_rate: 100)
@store1.employees.create(first_name: "Alex", last_name: "Thompson", hourly_rate: 70)
@store2.employees.create(first_name: "Karan", last_name: "Kumar", hourly_rate: 20)
