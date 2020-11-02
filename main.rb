require_relative './parser.rb'

def run(code)
  $maintable = TableNode.new([])
  r =  Parser.new.parse(code).eval
  puts "\n\nTable:\n"
  puts r[0].inspect
end

def main
  fn = ARGV[0]
  code = File.read(fn)
  run(code)
end

main
