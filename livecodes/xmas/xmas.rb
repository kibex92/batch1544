require 'date'


# Define the method with one parameter
# Define todays date
# Define the christmas date
# Subbtract christmas date from todays date
# Convert result to integer

def days_till_chrismas(date = Date.today)
  xmas = Date.new(date.year, 12, 25)
  if date > xmas
    xmas = xmas.next_year
  end
  (xmas - date).to_i
end


puts days_till_chrismas(Date.new(2024, 05,28)).class == Integer
puts days_till_chrismas(Date.new(2024, 12, 24)) == 1
puts days_till_chrismas(Date.new(3424, 12, 26)) == 364
puts days_till_chrismas == 344

