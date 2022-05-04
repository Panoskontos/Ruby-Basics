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
