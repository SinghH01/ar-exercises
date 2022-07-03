require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

puts "Total stores : #{Store.count}"

@mens_stores = Store.where(mens_apparel: true)

puts "Total mens stores : #{@mens_stores.count}"

@mens_stores.each {|store| 
  puts "Name: #{store.name} | Annual Revenue: #{store.annual_revenue}"
}

@women_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000) 

puts "Total women stores : #{@women_stores.count}"