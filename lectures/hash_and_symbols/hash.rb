

# CRUD WITH HASHES
# READ
# munich["mayor"] # => Reiter

# UPDATE
# munich["mayor"] = "Adonis"

# CREATE
# munich = {
#   "population" => 1500000, 

# DELETE
# munich.delete("population")

# munich["celebrities"][0]["actors"][0]["age"] # 42
      # ARRAY        
# p munich["clubs"][1]["coach"] # => Not Thomas Tuchel
# HASH    # ARRAY     #HASH
#   "mayor" => "Reiter",
#   "monument" => "Frauenkirche",
#   "clubs" => [
#     {
#       "name" => "FC Bayern München",
#       "coach" => "Thomas Tuchel"
#     },
#     {
#       "name" => "1860 München",
#       "coach" => "Not Thomas Tuchel"
#     }
#   ],
#   "celebrities" => [
#     "actors" => [
#       {
#         "name" => "Elias Mbarek",
#         "age" => 42
#       },
#       {
#         "name" => "Johnny Depp",
#         "age" => 51
#       }
#     ],
#     "sportsman" => [
#       "footballers" => [
#         {
#           "name" => "Franz Beckenbauer",
#           "age" => 78
#         }
#       ]
#     ]
#   ]
# }

# HASH WITH STRINGS
munich = {
  "population" => 1500000, 
  "mayor" => "Reiter",
  "monument" => "Frauenkirche",
}

# munich.each do |key, value|
#   puts "Munich's #{key} is #{value}"
# end

# # p munich.key?("asdjkh")
# # p munich["that does not exist?"] # Key
# p munich.keys # -> Array, to get all keys
# p munich.values # -> Array, to get all values

# HASH WITH SYMBOLS

munich = {
  population: 1500000, 
  mayor: "Reiter",
  monument: "Frauenkirche",
}

p munich[:population]


def tag(name, content, attributes = {})
  attributes_array = attributes.map do |key, value|
    " #{key}='#{value}'"
  end
  joined_attributes = attributes_array.join
  "<#{name}#{joined_attributes}>#{content}</#{name}>"
end

p tag("h1", "Hello world", { class: "bold", id: "logo", href: "alsdaksdj" })
p tag("h1", "Hello world")
# => <h1 class='bold'>Hello world</h1>
# p tag("h1", "Hello world")
# => <h1>Hello world</h1>