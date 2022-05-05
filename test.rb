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
puts str.insert(1,'ZA WARUDO')


# Numbers
total = (2 * 4)/(2**2)
puts total

# Number methods
# https://ruby-doc.org/core-3.1.0/Integer.html
puts 10.even?
puts 10.gcd(30)
puts 11.lcm(30)
puts 1.23341.round(2)

# Ruby operators
# https://www.tutorialspoint.com/ruby/
a = 2
b = 40
c=2
# comparison
puts a!=b
puts a<=b
puts a==c

p 12>6 && 30==15
# p 12>6 and 30==15 print true which is weird
p 12>6 || 30==15
p !(12>5)


# Methods and Functions

def printName(name)
    puts "using function for name #{name}" 
end

def mymath(a,b)
    # even if you don't return it returns it
    return a * b * a * b
end

# example with default
def printNameWithDefault(name="Panos")
    puts "My name is #{name}"
end

# example with params without parenthesis (Ruby way)
def mymath4 a,b,c,d=1
    return a*b*c*d
end

# example with params without parenthesis mixed
def mymath5 a:, b:, c:
    return a+b+c
end



printName("Nikolo Makiaveli")

total = mymath(2,3)
puts total

printNameWithDefault()

puts mymath4(1,2,3,4)

#  way eith no parenthesis only if function is like that
puts mymath5 a:1, b:2, c:3


# Splats
# What to do if you have too many arguments
def printUsers *users
    # Puts all our arguments inside an array
    p users
end

printUsers("Jow", "Charlie","Ben","Bravo")



# Passing hash as arguments
data = {
    "Jow":30,
    "Charlie:":26,
    "Ben":23,
    "Bravo":21
}

def printUsersAge users
    users.each do |user,age|
        puts "User: #{user} Age: #{age}"
    end
end

printUsersAge data


# Procs
# 1 liner functions <3 with 2 ways

# Whenever is something simple use 1 liner procs

printMyName = Proc.new { |name| puts "My name is #{name}"}
printMyName["Panos"]

printMyAge = Proc.new do |age| puts "My age is #{age}" end
printMyAge[30]

# example using procs
quickmath = Proc.new { |x,y| puts ((x**y)/2)+4 }
quickmath[5,5]


# Lambda Functions
# When to use lambdas 
# Functions inside function that keep things inside of a scope
# More advanced don't bother
adder = ->(x) { ->(y) { x + y } }

add4 = adder[4]
add6 = add4[6]

puts add6

# Ruby blocks
3.times do
    puts 'hello'
end

# Building our own blocks (Don't know why)
def times number
    number * yield
end

puts times(2) {20}


# Collections or Arrays

x = ["Nick","Richard","Leonard",[1,2,3], 23, 2.34, {'name':'panos'}]

p x[3][0]

# Other way to create array is
myArray = Array.new
myArray[0] = 21
myArray[2] = 21
myArray[2] = 31
p myArray
p myArray.length
myArray.push(11)
p myArray.length

arr = [1,2,3,4,1]
p arr.map {|a| 2*a}

arr.delete(1)
# methods within delete
arr.delete_if {|x| x>3}


arr = [1,2,3,4,5]
arr = arr.shuffle()
arr = arr.sort()
p arr
# You can use length, reverse, shuffle,sort
