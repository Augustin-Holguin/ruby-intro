#sum of the multiples of 3 and 5 which are inferior to 1000

sum = 0
numbers = (1..999)
numbers.each do |x|
  if x % 3 == 0 || x % 5 == 0
    sum += x
end
end
puts sum
