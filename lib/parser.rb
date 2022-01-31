require 'json'

class Parser
  def initialize(file_path)
    @file_path = file_path
    raise "File doesn't exist" unless File.exist?(@file_path)
  end

  def print_first_line
    File.open(@file_path, &:readline)
  end

  def print_info
    players_arr = []

    file_content = File.open(@file_path, &:readlines)
    line_count = file_content.count

    client_lines = file_content.grep(/.......ClientUserinfoChanged/)

    client_lines.each do |line|
      players_lines = line.split('n\\')[1]
      players_arr << players_lines.split('\\').first
    end
    { @file_path => { lines: line_count, players: players_arr.uniq } }
  end
end
