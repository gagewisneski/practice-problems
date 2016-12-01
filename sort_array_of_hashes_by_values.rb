#sort an array of hashes by the values doing bubble sort

pet_amounts = [
  {dog: 5},
  {cat: 3},
  {fish: 10},
  {bird: 2}
]

pets = []

pet_amounts.each do |inventory|
  pets << inventory.keys
  pets << inventory.values
end

puts pets

length = pet_amounts.length - 1
count = 0
length.times do
  length.times do
    if pets[count + 1].join.to_i > pets[count + 3].join.to_i
      pets[count], pets[count + 2] = pets[count + 2], pets[count]
      pets[count + 1], pets[count + 3] = pets[count + 3], pets[count + 1]
    end
    count += 2
    p pets
    puts "================"
  end
  count = 0
  length -= 1
end


# pets[0], pets[1], pets[2], pets[3] = pets[2], pets[3], pets[0], pets[1]



puts pets

# pet_amounts.each do |animal, amount|
#   length = pet_amounts.length - 1
#   count = 0
#   length.times do
#     length.times do
#       if amount > pet_amounts.values[count + 1]
#         pet_amounts.keys[count], pet_amounts.values[count], pet_amounts.keys[count + 1], pet_amounts.values[count + 1] = pet_amounts.keys[count + 1], pet_amounts.values[count + 1], pet_amounts.keys[count], pet_amounts.values[count]
#       end
#       count = count + 1
#     end
#     count = 0
#     length = length -1
#   end
#   p pet_amounts
# end
# p pet_amounts




