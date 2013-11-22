require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize(url)
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def pokemon_name
    html.search("").text
  end

end