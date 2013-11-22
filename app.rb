require './lib/*'

pokemon_scraper = Scraper.new("http://bulbapedia.")

name = pokemon_scraper.pokemon_name

pokemon = Pokemon.new(name)
puts pokemon.say_name
end