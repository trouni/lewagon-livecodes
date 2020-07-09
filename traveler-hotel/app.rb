require_relative 'app/repositories/hotel_repository'
require_relative 'app/repositories/traveler_repository'

hotel_repository = HotelRepository.new('data/hotels.csv')
traveler_repository = TravelerRepository.new('data/travelers.csv', hotel_repository)

travelers = traveler_repository.all

travelers.each do |traveler|
	puts "-" * 100
	puts
	puts ("#{traveler.name} is going to:").center(100)
	puts
	puts ("#{traveler.hotel.name}" + " ⭐️" * traveler.hotel.stars).center(100)
	puts
	puts ("in #{traveler.hotel.location}#{' 🏖' if traveler.hotel.beach?}").center(100)
	puts
end

if travelers.empty?
	puts "-" * 100
	puts
	puts "Sorry, no travelers in the app!".center(100)
	puts
	puts "-" * 100
end