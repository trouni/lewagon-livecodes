require 'yaml'
require_relative 'scraper'

movies = fetch_movie_urls.map { |url| scrape_movie(url) }

File.open('movies.yml', 'w') do |file|
	file.write(movies.to_yaml)
end