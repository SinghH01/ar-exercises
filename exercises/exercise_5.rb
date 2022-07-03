require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
puts "Sum : #{@total_revenue}"

@avg_revenue = Store.average(:annual_revenue)
puts "Average : #{@avg_revenue}"

@num_of_stores_1m_revenue = Store.where("annual_revenue > ?", 1000000).count

puts " number of stores that are generating $1M : #{@num_of_stores_1m_revenue}"
