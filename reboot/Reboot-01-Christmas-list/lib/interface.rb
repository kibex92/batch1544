require 'nokogiri'
require 'open-uri'
require_relative 'christmas_list'




wishlist = [{name: "Perfume", status: true}, {name: "Toy", status: false}]
puts "Welcome to your Wishlist App!"

loop do
  puts "What do you want to do? [list|add|delete|quit|mark|search]"
  action = gets.chomp.downcase
  case action
  when "list" 
    display(wishlist)
  when "add"
    puts "What do you want to add?"
    gift = gets.chomp
    wishlist << {name: gift, status: false}
    puts "#{gift} has been added to your wishlist"
    display(wishlist)
  when "delete"
    display(wishlist)
    puts "Which gift do you want to remove? (please input the number)"
    index = gets.chomp.to_i - 1
    gift = wishlist.delete_at(index)
    puts "#{gift[:name]} has been removed from your wishlist!"
    display(wishlist)
  when "mark"
    display(wishlist)
    puts "Which item do you want to mark as bought?"
    index = gets.chomp.to_i - 1
    gift = wishlist[index]
    # gift -> Hash
    gift[:status] = true
    display(wishlist)
  when "search"
    puts "What do you want to search for?"
    article = gets.chomp
    html_content = URI.open("https://www.etsy.com/de-en/search?q=#{article}", 
      "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").read
    doc = Nokogiri::HTML.parse(html_content)
    etsy_list = []
    doc.search('.v2-listing-card__info .v2-listing-card__title').first(5).each do |element|
      etsy_list << { name: element.text.strip,  status: false }
    end
    display(etsy_list)
    puts "Which gift do you want to add to your wishlist?"
    index = gets.chomp.to_i - 1
    gift = etsy_list[index] # gift -> Hash
    wishlist << gift
    display(wishlist)
  when "quit"
    break
  else
    puts "Wrong input, choose again!"
  end
end
puts "Goodbye"




