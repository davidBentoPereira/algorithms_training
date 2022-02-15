require "awesome_print"

def function(n)
  result = []
  (n).downto(1).each { |i| result.push(i) }
  result
end

pp function(5)


# TIME COMPLEXITY: O(n)
