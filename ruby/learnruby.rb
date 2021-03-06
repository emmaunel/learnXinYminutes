# This is a comment

# In Ruby, (almost) everything is an object.
# This includes numbers....
3.class # => Integer

# ...and Strings...
"Hello".class # => String

# ... and even methods
"Hello".method(:class).class #=> method

# Basic Arithmetic
1 + 1 # = 2
5 & 3 # = 2

# Bitwise operators
3 & 5 # => 1
3 | 5 # => 7
3 ^ 5 # => 6

nil # => null in other languauge
nil.class #=> NilClass

# String interpolation
placeholder = 'use string interpolation'
"I can #{placeholder} when using double quoted strings"

# Combining Strings
'hello ' + 'world' #=> hello world
'hello' + 3 # => TypeError
'hello ' + 3.to_s #=> hello 3
'hello #{3}' #=> hello 3

# append to strings
'hello' << ' world'

# Prints with a newline at the append
puts "I'm printing"

# .. or just Prints
print "Also print"

# Variable
x = 10
boo = true
st = "A string"

# Symbols are immutable, reuseable constants
:pending.class # => Symbols
status = :pending
status == :pending # true
status == 'pending' # false

# convert string to Symbols
status.to_s # => "pending"
"argon".to_sym # => :argon

# Array
array = [1,2,3,4,5]

# Arrays can contain different data types
[1, 'hello', false]

#Arrays can be indexed
array[0] # 1
array.first # 1
array[12] # Nil

# ...or from the back...
array[-1] # 5
array.last # 5

# .. or with a start index and length...
array[2,3] # [3,4,5]

# .. or with a range
array[1..3] # [2, 3, 4]

# Reversing an Array
[1,2,3].reverse # [3,2,1]

# accessing from an Array
array.[] 0 # 1

# adding to an array
array << 6
# or
array.push(6)

# .. and check if an item exists in an Array
array.include?(1) # true

# Hashes are Ruby's primary dictionary
hash = {'color' => 'green', 'number' => 5}
hash.keys # ['color', 'number']
hash['color'] # 'green'

hash.key?(:defcon) # false
hash.value?(3) # false

hash.each do |key, value|
  puts "#{key}  is #{value}"
end

# control structures
if true
  'if statement'
elsif false
  'else if, optional'
else
  'else'
end

# Loops
# Weird for loops ruby has
(1..5).each do |counter|
  puts "Iteration #{counter}"
end

# also writend like This
(1..5).each { |counter| puts "Iteration #{counter}" }


array.each_with_index do |element, inded|
  puts  "#{element} is number #{inded} in the array"
end

counter = 1
while counter <= 5 do
  puts "Iteration #{counter}"
end

# There are a bunch of other helpful looping functions in Ruby.
# Map, for instance, takes the array it's looping over, does something
# to it as defined in your block, and returns an entirely new Array
array = [1,2,3,4,5]
doubled = array.map { |element|
  element * 2}

# switch cases
grade = 'B'
case grade
when 'A'
  puts 'Way to go'
else
  puts 'Faild'
end

# Exception handling
begin
  # Code here that might raise an Exception
  raise NoMemoryError, 'You ran out of memory'
rescue NoMemoryError
  puts 'Memory Error Riased'
rescue RuntimeError
  puts "Runtime raise"
else
  puts 'This runs if no exception were thrown at all'
ensure
  puts 'This code always runs no matter what'
end

# method
def double(x)
  x * 2
end

double(2) # 4
double 3 # 6
double double 3 # 12

def sum(x, y)
  x + y
end

sum 3, 4 # 7

# yield
# All methods have an implicit, optional block parameter.
#It can be called with the yield keyword
def surround
  puts '{'
  yield
  puts '}'
end

surround { puts 'hello world' }
# {
# hello world
# }
