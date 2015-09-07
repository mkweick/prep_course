puts "What's your first name?"
first_name = gets.chomp
puts "What's your Last Name?"
last_name = gets.chomp
puts "Welcome to my app, #{first_name + " " + last_name}!"

10.times do
  puts first_name + " " + last_name
end