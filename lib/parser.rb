require 'json'

class Parser
  def initialize(file)
    @file = file
    raise "File doesn't exist" unless File.exists?(@file)
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
    JSON.pretty_generate({@file => {lines: file_lines}}) 
  end
end
