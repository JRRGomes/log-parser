require_relative './lib/parser'

puts Parser.new('./spec/fixtures/games_test.log').print_info
