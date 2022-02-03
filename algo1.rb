# je vous donne n.
# Vous me donnez la somme des multiples de 3 et de 5 inférieurs à n
# Egalement je veux connaitre la complexité temporelle et spatiale de votre algo
# votre_fonction(10)
# # 33
# votre_fonction(16)
# # 60
# votre_fonction(1000)
# # 233168

def sum_of_multiples_of_3_and_5(limit)
  multiples_of_3 = []
  multiples_of_5 = []

  (1..limit).each do |i|
    # Find all the multiples of 5 below 10 : [3, 6, 9]
    multiples_of_3 << i if i % 3 == 0 && !multiples_of_3.include?(i)

    # Find all the multiples of 5 below 10 : [5, 10]
    multiples_of_5 << i if i % 5 == 0 && !multiples_of_5.include?(i) && !multiples_of_3.include?(i)
  end

  # puts "multiples of 3: #{multiples_of_3}"
  # puts "multiples of 5: #{multiples_of_5}"

  # Sum up the multiples of 3 and 5
  multiples_of_3.sum + multiples_of_5.sum
end

puts "Sum of the multiples of 3 and 5 under 10: #{sum_of_multiples_of_3_and_5(10)}"
puts "Sum of the multiples of 3 and 5 under 16: #{sum_of_multiples_of_3_and_5(16)}"
puts "Sum of the multiples of 3 and 5 under 1000: #{sum_of_multiples_of_3_and_5(1000)}"
