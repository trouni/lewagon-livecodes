require 'nokogiri'
require 'open-uri'

def fetch_movie_urls
	url = 'https://www.imdb.com/chart/top'
	html_file = open(url).read
	html_doc = Nokogiri::HTML(html_file)
	html_doc.search('.titleColumn a').first(5).map do |link|
		'http://www.imdb.com' + link.attribute('href').value
	end
end

def scrape_movie(url)
	html_file = open(url, "Accept-Language" => "en").read
	html_doc = Nokogiri::HTML(html_file)

	h1_tag = html_doc.search('.title_wrapper h1').text.strip
	m_data = h1_tag.match(/(?<title>.+).\((?<year>\d{4})\)/)

	storyline = html_doc.search('.summary_text').text.strip

	director = html_doc.search('.credit_summary_item a').first.text.strip

	cast = html_doc.search('.primary_photo + td a').first(3).map { |el| el.text.strip }

	{
		title: m_data[:title],
		director: director,
		storyline: storyline,
		year: m_data[:year].to_i,
		cast: cast
	}
end