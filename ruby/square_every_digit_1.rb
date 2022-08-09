# Kata link: https://www.codewars.com/kata/546e2562b03326a88e000020
# Date copied: 09-Aug-2022

# Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

# Note: The function accepts an integer and returns an integer

def square_digits(num)
  final_array = []
  num.digits.reverse.each do |n|
    final_array.push(n ** 2)     
  end
  return final_array.join("").to_i
end

# will understand mapping in Ruby to instead make use of:
# num = num.to_s.chars.map(&:to_i)

# example:
# def square_digits num
#   num.to_s.chars.map{|x| x.to_i**2}.join.to_i
# end