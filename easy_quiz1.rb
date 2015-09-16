numbers = [1, 2, 2 , 3]
print numbers.uniq!
puts

test = 5 > 4
puts !test
puts !!test

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')
puts advice

numbers = [1 ,2, 3, 4, 5]
numbers.delete_at(1)
numbers.delete(1)
print numbers
puts
puts (10..100).cover?(42)

famous_words = "and seven years ago..."
additional_words = "Four score and "
puts additional_words + famous_words
puts "Four score and #{famous_words}"
puts "Four score and " + famous_words


def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep


flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
print flintstones
puts
print flintstones.flatten!
puts

flintstones = { Fred: 0, Wilma: 1, Barney: 2, Betty: 3, BamBam: 4, Pebbles: 5 }
print flintstones.assoc(:Barney)
puts

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index { |name, index| flintstones_hash[name] = index}
print flintstones_hash
puts