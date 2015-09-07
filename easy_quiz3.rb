flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
print flintstones
puts
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
print flintstones
puts

flintstones << "Dino"
print flintstones
puts

flintstones.push("Marge").push("Hoppy")
print flintstones
puts


advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice(0, advice.index('house'))
advice.slice!(0, advice.index('house'))
puts advice

statement = "The Flintstones Rock!"
puts statement.scan('t').count


title = "Flintstone Family Members"
puts title.center(40)