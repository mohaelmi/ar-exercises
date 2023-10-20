require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


class Employees < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40 }
  validates :hourly_rate, numericality: { less_than_or_equal_to: 200 }
end

# Add some data into employees. Here's an example of one (note how it differs from how you create stores):
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Moha", last_name: "Elmi", hourly_rate: 220)
@store2.employees.create(first_name: "Jim", last_name: "Bob", hourly_rate: 50)
@store2.employees.create(first_name: "Vicky", last_name: "Amenual", hourly_rate: 80)



puts "enter store name"
@store_name  = gets.chomp

@new_store = Store.create(name: @store_name)
p @new_store.errors