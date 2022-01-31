require_relative './lib/parser'

puts JSON.pretty_generate(Parser.new('./spec/fixtures/games_test.log').print_info)
