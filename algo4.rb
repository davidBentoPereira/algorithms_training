# n étant donné entier naturel, existe-t-il k entier tel que F(k) * F(k + 1) = n ?
# Si oui, donner le tableau [F(k), F(k+1), true].
# Si non, donner le tableau [F(k), F(k+1), false] tel que F(k-1)F(k) < n < F(k)F(k+1).
#
# F(x) est la série de fibonnacci pour x: F(x) = F(x-1) + F(x-2) avec F(1) = 0 et F(2) = 1.
require "awesome_print"

def function(n)
  (1..n).each do |k|
    return [k, k + 1, true] if k * (k + 1) == n
  end

  (1..n).each do |k|
    return [k, k + 1, false] if k * (k - 1) < n && k * (k + 1) > n
  end
end

puts "Should return true :"
pp function(2)
pp function(6)
pp function(12)
pp function(20)
pp function(30)
pp function(42)
pp function(56)

puts "Should return false :"
pp function(1)
pp function(3)
pp function(4)
pp function(5)
pp function(100000000)
