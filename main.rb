require_relative './lib/parser'

p Parser.new('./spec/fixtures/games_test.log').print_info
