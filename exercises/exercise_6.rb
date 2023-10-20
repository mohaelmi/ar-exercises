require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


class Employees < ActiveRecord::Base
  belongs_to :store
end

# Add some data into employees. Here's an example of one (note how it differs from how you create stores):
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Moha", last_name: "Elmi", hourly_rate: 220)
@store2.employees.create(first_name: "Jim", last_name: "Bob", hourly_rate: 50)
@store2.employees.create(first_name: "Vicky", last_name: "Amenual", hourly_rate: 80)
