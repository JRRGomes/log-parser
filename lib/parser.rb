require 'json'

class Parser
  def initialize(filename)
    @filename = filename
    raise "File doesn't exist" unless File.exist?(@filename)
  end

  def print_first_line
    filename = File.open(@filename)
    first_line = filename.readline
    filename.close
    first_line
  end

  def print_info
    filename = File.foreach(@filename)
    file_lines = filename.count

    players_arr = []

    data = File.open(@filename, &:readlines)
    client_lines = data.grep(/.......ClientUserinfoChanged/)

    client_lines.each do |line|
      players_lines = line.split('n\\')[1]
      players_arr << players_lines.split('\\').first
    end
    JSON.pretty_generate({ @filename => { lines: file_lines, players: players_arr.uniq } })
  end
end
