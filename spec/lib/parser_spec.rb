require './lib/parser'

describe Parser do
  describe '#print_first_line' do
    it 'prints the file first line' do
      file = Parser.new('./spec/fixtures/games_test.log')
      expect(file.print_first_line).to eql("  0:00 ------------------------------------------------------------\n")
    end

    it 'checks if the file exists' do
      expect { Parser.new('game.log') }.to raise_error(RuntimeError, "File doesn't exist")
    end

    it 'prints a json with the file location and how many lines on it' do
      file = Parser.new('./spec/fixtures/games_test.log')
      expect(file.print_info).to eql("{\n  \"./spec/fixtures/games_test.log\": {\n    \"lines\": 50,\n    \"players\": [\n      \"Isgalamido\",\n      \"Dono da Bola\",\n      \"Mocinha\"\n    ]\n  }\n}")
    end
  end
end
