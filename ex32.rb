the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind if for-loop goes through a list
# in a more traditional style found in other language
for number in the_count
  puts "This is count #{number}"
end

the_count.each do |num|
  puts "Another way to count #{num}"
end

# same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loops are written
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}" }

# we can also build lists, first start with an empty one
elements = []
elements2 = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  elements.push(i)
end

# use << (same as push) and "..." exclusive range (highest number not included)
(0...5).each do |i|
  elements2 << i
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}"}
elements2.each { |i| puts "Element 2 was #{i}" }