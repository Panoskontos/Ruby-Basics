# typr "ruby filename" to run

# print "hey"
box = 34
name = 'Panos'
friends = ['Nokio','Nik','Meloyan']

# friends = "change type"

# mostly use puts, p is used when you want to debug cause it gives you more information
puts friends
p friends




# Get users input
# puts "What is your name?"
# name = gets
# p name 

# What's out because it will be saved 'panos\n'



# Looping
x = 1
5.times do
    print 'Loop '
    print x
    puts ''
    x+=1
    # make a value global scope
    $y = 'global'
end

puts $y


# We will use it on Frameworks
@names = ['Jane','John']
puts @names


# Classes
class Cars
    @@title = "Honda"
end

# Constants that can be changed for some reason!
BMW = "M3"
BMW = "M5"

puts BMW

# Strings combining with variables
puts "what is your name?"
# fname = gets
fname = 'Panos'
age = 25
fav_color = 'Blue'
# only double quotes work for that not single
print "my name is #{fname} and i'm #{age} years old i was born in #{1990+6} my favourite color is #{fav_color}"


# Trying string methods
# https://ruby-doc.org/core-3.1.2/String.html
puts 
str = 'hello'
puts str.upcase
str = 'hello'
puts str.to_sym