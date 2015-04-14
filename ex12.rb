print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."


# Study drill
print "Give me money: "
money = gets.chomp.to_f

interest = money + (money * 0.1)
puts "Interest is #{interest}"
