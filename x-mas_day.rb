require 'date'
# here Date.today is sent as default if called without Argument.
def days_for_xmas(your_date = Date.today)
  xmas_day = Date.new(your_date.year, 12, 25)
  # xmas_day's year increased by 1 year incase xmas_day has already passed the given year. 
  xmas_day = xmas_day.next_year if your_date > xmas_day
  (xmas_day - your_date).to_i  
end

puts days_for_xmas
#TODO 
puts "Returns a integer?"
puts days_for_xmas.class == Integer

puts "Returns 86 days?"
puts days_for_xmas ==86

puts "Returns 0 if 12/25?"
puts days_for_xmas(Date.new(2021, 12, 25)) == 0

puts "Returns 364 if 12/26?"
puts days_for_xmas(Date.new(2021, 12, 26)) == 364