10.times { |number| puts (" " * number) + "The Flintstones Rock!"}

start = Time.now
statement = "The Flintstones Rock"
statement_hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  statement_hash[letter] = letter_frequency if letter_frequency > 0
end
print statement_hash.sort.to_h
puts
puts Time.now - start

start1 = Time.now
statement1 = "The Flintstones Rock"
statement1_hash = {}
statement1.split("").each do |letter|
  if statement1_hash.key?(letter)
    statement1_hash.each { |k, v| statement1_hash[k] = v + 1 if k == letter }
  else
    statement1_hash[letter] = 1 if letter != " "
  end
end
print statement1_hash.sort.to_h
puts
puts Time.now - start1

puts "the value of 40 + 2 is " + (40 + 2).to_s

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
print numbers
puts

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
print numbers
puts

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end
puts factors(90)


$limit = 15

def fib(first_num, second_num)
  while second_num < $limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

words = "testing OUT the New MEthoD"
puts words.split.map{ |word| word.downcase.capitalize }.join(' ')


munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
puts munsters