if false
  greeting = “hello world”
end

puts greeting



greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings


def mess_with_vars1(one1, two1, three1)
  one1 = two1
  two1 = three1
  three1 = one1
end

one1 = "one"
two1 = "two"
three1 = "three"

mess_with_vars1(one1, two1, three1)

puts "one is: #{one1}"
puts "two is: #{two1}"
puts "three is: #{three1}"


def mess_with_vars2(one2, two2, three2)
  one2 = "two"
  two2 = "three"
  three2 = "one"
end

one2 = "one"
two2 = "two"
three2 = "three"

mess_with_vars2(one2, two2, three2)

puts "one is: #{one2}"
puts "two is: #{two2}"
puts "three is: #{three2}"


def mess_with_vars3(one3, two3, three3)
  one3.gsub!("one","two")
  two3.gsub!("two","three")
  three3.gsub!("three","one")
end

one3 = "one"
two3 = "two"
three3 = "three"

mess_with_vars3(one3, two3, three3)

puts "one is: #{one3}"
puts "two is: #{two3}"
puts "three is: #{three3}"


def generate_UUID
    characters = [] 
    (0..9).each { |digit| characters << digit.to_s }
    ('a'..'f').each { |digit| characters << digit }

    uuid = ""
    sections = [8, 4, 4, 4, 12]
    sections.each_with_index do |section, index|
      section.times { uuid += characters.sample }
      uuid += '-' unless index >= sections.size - 1
    end

    uuid
end

puts generate_UUID


def is_a_number?(number)
  number =~ /\A[-+]?[0-9]*\.?[0-9]+\Z/
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word)
  end

  true
end

puts dot_separated_ip_address?("192.168.12.123")