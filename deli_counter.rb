# Write your code here.

def line(katz_deli)
  if !katz_deli.any?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each.with_index(2) do |person, i|
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

