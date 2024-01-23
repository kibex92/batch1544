puts "Welcome to our special shop!"
store = {
  "kiwi" => 1.25,
  "banana" => 0.50,
  "mango" => 4,
  "asparagus" => 9
}
# { i.e "kiwi" => 10}
cart = {}
store.each do |item, price|
  puts "#{item.capitalize} - #{price}€"
end
loop do
  puts "Which item do you want to buy? (or 'quit' to exit)"
  item = gets.chomp.downcase
  if store.key?(item)
    # 2. Ask user how many
    puts "How many?"
    # 3. Get input and store in a variable
    quantity = gets.chomp.to_i
    # 4. Create a new key in the hash with the item as key and quantity as value
    #   If the key is present in the cart -> Increment amount by one: UPDATE
    #   If not -> Create the key-value pair with item and quantity
    cart.key?(item) ? cart[item] += quantity : cart[item] = quantity
    puts "#{item} has been added to your cart!"
  elsif item == "quit"
    break
  else
    puts "Sorry, #{item} is not available today!"
  end
end
sum = 0
# 5. Update how you iterate over the cart
cart.each do |item, quantity| # add value as well
  # item -> "kiwi", quantity -> 3 i.e.
  price = store[item] * quantity # store['kiwi'] -> 1.25
  puts
  sum += price
end
puts "-------BILL---------"
puts "TOTAL: #{sum}€"
puts "--------------------"

# > -------BILL---------
# > kiwi: 2 X 1.25€ = 2.5€
# > mango: 3 X 4€ = 12€
# > TOTAL: 14.5€
# > --------------------






# > --------------------
# > Welcome to Instacart
# > --------------------
# > In our store today:
# > kiwi: 1.25€
# > banana: 0.5€
# > mango: 4€
# > asparagus: 9€
# > --------------------
# > Which item? (or 'quit' to checkout)
# > kiwi
# > Which item? (or 'quit' to checkout)
# > pineapple
# > Sorry, we don't have pineapple today.
# > Which item? (or 'quit' to checkout)
# > mango
# > Which item? (or 'quit' to checkout)
# > quit
# > -------BILL---------
# > TOTAL: 5.25€
# > --------------------