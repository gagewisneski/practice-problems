#select a specific key in a hash of hashes
hashy = {dog: {title: "rex", age: 5, breed: "dalmation"}, cat: {title: "fluffy", age: 3, breed: "Siamese"}, fish: {title: "goldie", age: 1, breed: "goldfish"}}

puts hashy[:dog][:title]

array = [{dog: {title: "rex", age: 5, breed: "dalmation"}}, {cat: {title: "fluffy", age: 3, breed: "Siamese"}}, {fish: {title: "goldie", age: 1, breed: "goldfish"}}]

