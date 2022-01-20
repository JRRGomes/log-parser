require_relative './lib/parser.rb'

p Parser.new('games.log').print_first_line
