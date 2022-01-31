require './lib/parser'

describe Parser do
  describe '#print_first_line' do
    it 'should print the file first line' do
      file = Parser.new('./spec/fixtures/games_test.log')
      expect(file.print_first_line).to eql("  0:00 ------------------------------------------------------------\n")
    end

    it 'should raise an error if the file doesnt exists' do
      expect { Parser.new('game.log') }.to raise_error(RuntimeError, "File doesn't exist")
    end

    it 'should print a json with the file location and how many lines on it' do
      file = Parser.new('./spec/fixtures/games_test.log')
      expect(file.print_info).to eql({"./spec/fixtures/games_test.log"=>{:lines=>50, :players=>["Isgalamido", "Dono da Bola", "Mocinha"]}})
    end
  end
end
