require './lib/parser.rb'

describe Parser do
  describe "#print_first_line" do
    it "prints the file first line" do
      file = Parser.new('games.log')
      #file = Parser.new('./spec/fixtures/games_test.log')
      expect(file.print_first_line).to eql("  0:00 ------------------------------------------------------------\n")
    end

    it "checks if the file exists" do
      expect{Parser.new('game.log').print_first_line}.to raise_error(RuntimeError, "File doesn't exist")
    end
  end
end
