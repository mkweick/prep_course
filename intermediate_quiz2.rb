munsters = { 
  Herman: { age: 32, gender: "male" }, 
  Lily: { age: 30, gender: "female" }, 
  Grandpa: { age: 402, gender: "male" }, 
  Eddie: { age: 10, gender: "male" },
  Marilyn: { age: 23, gender: "female" }
}

total_male_age = 0

munsters.each do |key, details|
  if details[:gender] == "male"
    total_male_age += details[:age]
  end
end

puts total_male_age


munsters.each do |key, details|
  puts "#{key} is a #{details[:age]} year old #{details[:gender]}."
end


#def tricky_method(a_string_param, an_array_param)
#  a_string_param += "rutabaga"
#  an_array_param << "rutabaga"
#end

#my_string = "pumpkins"
#my_array = ["pumpkins"]
#tricky_method(my_string, my_array)

#puts "My string looks like this now: #{my_string}"
#puts "My array looks like this now: #{my_array}"

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


sentence = "Humpty Dumpty sat on a wall."
puts sentence
puts sentence.split(/\W/).reverse.join(" ") + "."


def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")


def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

puts bar(foo)