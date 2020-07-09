require 'date'

def days_until_xmas(date = Date.today)
  # Get today's date
  # today = Date.today
  # Get christmas's date
  christmas = Date.new(date.year, 12, 25)
  # if today is after christmas
  # add one to hte year
  christmas = christmas.next_year if date > christmas
  # Subtract the two dates
  (christmas - date).to_i
  # Return number of days as an integer
end

puts days_until_xmas == 262
puts days_until_xmas(Date.new(2020, 12, 26)) == 364
puts days_until_xmas(Date.new(2021, 12, 26)) == 364
puts days_until_xmas


