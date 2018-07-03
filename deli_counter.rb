# Write your code here.

def line(katz_deli)
  if !katz_deli.any?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
  end
    puts current_line
  end
end

def take_a_number(katz_deli, person)
  katz_deli.push(person)
  puts "Welcome, #{person}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end

katz_deli = []

take_a_number(katz_deli, "Ada") 
  #=> Welcome, Ada. You are number 1 in line.
take_a_number(katz_deli, "Grace") 
  #=> Welcome, Grace. You are number 2 in line.
take_a_number(katz_deli, "Kent") 
  #=> Welcome, Kent. You are number 3 in line.
 
line(katz_deli) 
  #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

