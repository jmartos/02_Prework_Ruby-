 #Loop con "each"
 numbers = [*1..100]
 numbers.each do |item|
  if item % 3 == 0 and item % 5 != 0
    puts "Fizz"
  elsif item % 5 == 0 and item % 3 != 0
    puts "Buzz"
  elsif item % 3 == 0 and item % 5 == 0
    puts "FizzBuzz"
  else
    puts item
  end
end

#Loop con "for"
 numbers = [*1..100]
 for item in numbers
  if item % 3 == 0 and item % 5 != 0
    puts "Fizz"
  elsif item % 5 == 0 and item % 3 != 0
    puts "Buzz"
  elsif item % 3 == 0 and item % 5 == 0
    puts "FizzBuzz"
  else
    puts item
  end
end


#Bang
 numbers = [*1..100]

numbers.each do |item|
  
  result = ""

  if item % 3 == 0 and item % 5 == 0
    result << "FizzBuzz"
  elsif item % 3 == 0 
    result << "Fizz"
  elsif item % 5 == 0 
    result << "Buzz"
  end

  if item.to_s.start_with? "1"
    result << "Bang"
  end

  if result == "" 
    result = item
  end
    
    puts result
end

