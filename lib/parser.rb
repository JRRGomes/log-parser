require 'json'

class Parser
  def initialize(file)
    @file = file
    raise "File doesn't exist" unless File.exist?(@file)
  end

  def print_first_line
    file = File.open(@file)
    first_line = file.readline
    file.close
    first_line
  end

  def print_info
    file = File.foreach(@file)
    file_lines = file.count

    new_file = File.open(@file)
    array = new_file.readlines
    client_lines = array.grep(/.......ClientUserinfoChanged/)
    new_file.close

    players_arr = Array.new

    client_lines.map do |line|
      splitted_lines = line.split('n\\')
      players_lines = splitted_lines[1]
      player = players_lines.split('\\').first
      players_arr << player
    end
    JSON.pretty_generate({ @file => { lines: file_lines, players: players_arr.uniq } })
  end
end
