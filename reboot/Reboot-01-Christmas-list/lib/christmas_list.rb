def display(wishlist)
  wishlist.each_with_index do |gift, index|
    # gift -> Hash
    status = gift[:status] ? "[X]" : "[ ]"
    puts "#{index + 1} - #{status}  #{gift[:name]}"
  end
end
