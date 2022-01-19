require './lib/parser.rb'

describe Parser do
  describe "#print_first_line" do
    it "prints file first line" do
      file = Parser.new('./spec/fixtures/games_test.log')
      expect(file.print_first_line).to eql("  0:00 ------------------------------------------------------------\n")
    end
  end
end
