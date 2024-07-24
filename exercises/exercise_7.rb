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

print "Give me a store name:"
store_name = gets.chomp

new_store = Store.new(name: store_name)
new_store.save
err = new_store.errors

err.each do |error|
  puts "The column #{error.attribute} is #{error.type}" 
end