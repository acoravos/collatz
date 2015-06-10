def collatz_iterative(n) #collatz conjecture
  output = [n]
  while n != 1
    if n%2 ==0
      n /=2
      output << n
    else
      n = (n*3)+1
      output << n
    end
  end
  return output
end

def collatz_recursive(n)
  output = [n]
  return output if n == 1
  if n%2 == 0
    output + collatz_recursive(n/2)
  else
    output + collatz_recursive((n*3)+1)
  end
end


# (1..20).to_a.each do |n|
#   p collatz_recursive(n)
#   p collatz_iterative(n)
# end

p collatz_recursive(10000000001)
