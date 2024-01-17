foods = ["Cevapcici", "Sausages", "Shawarma", "Biryani", "Moussaka", "Pierogi", "Melanzane"]


foods.each do |food|
  next if food == "Sausages"
  puts "I like #{food.capitalize}"
end

# # READ
# foods[2] # Shawarma
# foods[-1] # Melanzane
# foods[foods.size - 1] # alternative to -1
# # UPDATE
# foods[1] = "Schnitzel"

# # CREATE
# foods << "Döner"

# # DELETE
# foods.delete("Döner")
# foods.delete_at(1)
# p foods