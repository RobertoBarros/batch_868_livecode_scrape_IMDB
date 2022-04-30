require 'yaml'
require_relative 'scraper'


links = fetch_top_movie_urls

movies = []
links.each do |link|
  movies << scrape_movie(link)

  # puts "Title: #{movie[:title]}"
  # puts "Year: #{movie[:year]}"
  # puts "Storyline: #{movie[:storyline]}"
  # puts '-' * 80
end

File.open('movies.yml', 'wb') do |file|
  file.write(movies.to_yaml)
end
