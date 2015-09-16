ages = { Herman: 32, Lily: 30, Grandpa: 5843, Eddie: 10 }

total_age = 0

for key, value in ages do
  total_age += value
end

puts total_age
puts ages.values.inject(:+)
puts ages.keep_if { |name, age| age < 100 }


munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize!
puts munsters_description

munsters_description.swapcase!
puts munsters_description

munsters_description.downcase!
puts munsters_description

munsters_description.upcase!
puts munsters_description

additional_ages = { Grandpa: 5843, Marilyn: 22, Spot: 237 }
puts ages.merge!(additional_ages)


advice = "Few things in life are as important as house training your pet 
          dinosaur."

puts advice.match("Dino")

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.index { |name| name[0, 2] == "Be"}

flintstones.map! { |name| name[0, 3] }
puts flintstones