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
    require 'json'
    file = File.foreach(@file)
    file_lines = file.count
    json_lines = {@file => {'lines' => file_lines}}.to_json
	  JSON.pretty_generate(JSON.parse(json_lines)) 
  end
end
