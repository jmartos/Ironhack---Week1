require 'pry'
class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Peter's place", "London", 5, 89),
  Home.new("Klaus's place", "Berlin", 2, 70),
  Home.new("Ahmed's place", "Marrakech", 4, 38),
  Home.new("Vlad's place", "Kiev", 8, 70),
  Home.new("Lars's place", "Oslo", 7, 120)
]


#Print places
  def print_array (array)
  array.each do |place|
    puts "#{place.name} in #{place.city}\nPrice: #{place.price} a night"
    end
   end 


#list places
print_array(homes)


#Sort places
sort_array_by_city = homes.sort_by {|x| x.city}
print_array(sort_array_by_city)


#Sort capacities
sort_array_by_capacity = homes.sort_by {|x| x.capacity}
print_array(sort_array_by_capacity)


#Sort price
sort_array_by_price = homes.sort_by {|x| x.price}
print_array(sort_array_by_price)


#Select city
puts "Select a ciy"
select_city = gets.chomp
result = []
  result = homes.select do |place|
    if place.city == select_city
    result.push (place)
    puts "#{place.name} in #{place.city}\nPrice: #{place.price} a night"
  end
end


#Array of prices
# def array_of_prices (array)
#   prices = array.map {|place| place.price}
#   puts "The array of prices is: #{prices}"
# end
# array_of_prices(homes)

#Array of prices without a function
prices = homes.map {|place| place.price}
#puts "The array of prices is: #{prices}"


#Averege prices with each
# def averege1 (array)
# prices_sum = 0.0
#   array.each do |cost|
#     prices_sum += cost
#     end
#   averege_price = prices_sum/array.length
#   puts "The average price using 'each' is #{averege_price}"
# end
# averege1(prices)


#Averege prices with reduce
def averege2 (array)
  prices_sum = array.reduce(0.0){|memo, x| memo+x}
  averege_price = prices_sum/array.length
  puts "The average price using 'reduce' is #{averege_price}"
end
averege2(prices)


#Find price
puts "Select your price"
select_price = gets.chomp
  result = homes.find do |place|
    if place.price.to_s == select_price
    puts "#{place.name} in #{place.city}\nPrice: #{place.price} a night"
  end
end




