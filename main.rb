require_relative './lib/parser.rb'

puts Parser.new('./spec/fixtures/games_test.log').print_info
