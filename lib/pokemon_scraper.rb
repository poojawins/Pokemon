require 'rubygems'
require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize(url)
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def pokemon_name
    html.search("") { |pokemon| pokemon.text }
  end

end

pokemon_scrape = Scraper.new("http://bulbapedia.bulbagarden.net/wiki/Miltank_(Pok%C3%A9mon)")
puts pokemon_scrape.pokemon_name

