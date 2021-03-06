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
# You can use length, reverse, shuffle,sort

# map , it is similar to one of javascript
arr = arr.map {|x| (3*x) + 2**x }
p arr


# concat
arr2 = [11,11,11,11]
arr = arr.concat(arr2)
# uniq
# You can always combine methods!! wow
arr = arr.uniq.sort.reverse.map {|x| x**2}
p arr 


# hash

user = {
    :name => 'panos',
    :age => 26,
    :job => 'developer',
    :extra => {
        :height => '1,75',
        :weight => '80'
    }
}

# how to access them
p user[:name]
# multiple objects
p user[:extra][:height]

# injecting
user[:status] = "married"
# updating
user[:job] = "senior developer"
p user

# get all keys
p user.keys
p user.values


# loops
# for loop
for i in 0..10
    puts i
end

# while loop
i=0
while i<10 do
    puts i
    i+=1
end

# times loop
5.times do
    puts "Hey my name is Panos"
end

# array iteration
users = ["Joe","Nick","Mark"]

# 2 ways
# regular
users.each do |x|
    puts x
end

# 1 liner
users.each { |x| p x }

# hash looping
hash = {
    :name => "Panos",
    :age => 26,
    :location => "ATH"
}

hash.each { |key, value|  
    p key
    p value
}

# Nested Hash Loops
data = {
    :AEK => {
        2 => "Pavlopoulos",
        3 => "Raul",
        10 => "Melo",
    },
    :PAOK => {
        2 => "Anastasopoulos",
        3 => "Rico",
        10 => "Venga",
    }
}

data.each do | team, players |
    p '#### TEAM #####'
    p team
    p "###### PLAYERS"
    players.each do |num, player|
        p "#{num} " "#{player}"
    end
end


# Nested Arrays Loop
users = [
    ["Joe","21","LA"],
    ["Pit","26","NY"],
    ["Panos","26","ATH"],
]

users.each {|x| x.each { |y| p y}}


# Conditionals
 a= 20
 b = 30
 c = a + b
 d =a 

 if a==b
    p "all good"
 elsif a<b
    p "Normal" 
 else 
    p "all bad"
 end

#  Unless (Opposite of if)
unless (a>b)
    p "Unless true"
else
    p "Unless false"
end

# If you use else if more than 2 times then you should start using cases
# p "What is your signal"
# signal = gets.chomp.to_i
# p signal
signal = 1

case 
when signal == 1
    p "Activate"
when signal == 2
    p "Dectivate"
when signal == 3
    p "Reload"
when signal == 4
    p "Pause"
end

# Ternary operator
car1 = 3000
car2 = 6000

# 1 liner if <3
total = (car1 < car2) ? "It is cheap" : "It is expensive"
p total

 # ------------------ classes ------------------

class Vehicle
    # geters and setters
    # on the values you want to edit 
    # outside of the class
    attr_accessor :name, :price

    # class variables
    @@total_instances = 0

    # initialize
    def initialize(name)
        @name = name
        @price = price

        @@total_instances +=1
    end
    
    # method
    def printInfo
        p @name
        # you can also put methods that will get called!
        self.newBuyer
    end

    def newBuyer
        p "You just bought a new #{name}"
    end

    # class methods 
    # these will give you general class info
    def self.printType
        p "This is a class for Vehicles"
    end
   
    def self.printTotalInstances
        p @@total_instances
    end
end

car = Vehicle.new("Honda")
car2 = Vehicle.new("BMW")
car.printInfo
car.name = "Benz"
car.printInfo

Vehicle.printType
Vehicle.printTotalInstances


# Class Inheritance
class Animal
    def printName
        p "The name of the animal is #{@name}"
    end

    def CreatedBy
        p 'was created by Panos'
    end
end

class Cat < Animal
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    # super
    # when you have same methods
    def CreatedBy
        # get the method that is inside of the parent class
        p super + 'was created by Cat'
    end
end

kotuk = Cat.new("Kallas")
kotuk.printName
kotuk.CreatedBy


# Modules

module App
    def printLocation
        p "This app was created in ATH with name #{@name}"
    end 
end

class MyClass
    # Adds all methods inside of Module 
    include App
    attr_accessor :name

    def initialize(name)
        @name=name
    end

end

c = MyClass.new('Panos')
c.printLocation
