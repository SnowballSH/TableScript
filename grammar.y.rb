class Parser

token INTEGER PRINT INDEX

prechigh
  left PRINT
  left INDEX
preclow

rule

Program:
  /* nothing */          { result = Nodes.new([]) }
  | Expressions          { result = Nodes.new(val[0]) }
;

Expressions:
  Expression             { result = val }
;

Expression:
  INTEGER  { result = LitInteger.new(val[0]) }
  | PRINT Expression      { result = PrintNode.new(val[1]) }
  | Expression INDEX INTEGER  { result = IndexNode.new(val[0], val[2]) }
  | '@'                   { result = SelfNode.new }
  | '{' Table '}'         { result = TableNode.new(val[1]) }
  | '(' Expression ')'    { result = val[1] }
;

Table:
    /* nothing */          { result = [] }
  | Table ',' Expression   { result = val[0] << val[2] }
  | Expression             { result = [val[0]] }
;

---- header
  require "#{File.dirname(__FILE__)}/lexer.rb"
  require "#{File.dirname(__FILE__)}/nodes.rb"

---- inner
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end
  
  def next_token
    @tokens.shift
  end

  def on_error(*e)
    x = e[1] == '$' ? 'End of file' : e[1]
    puts "Invalid Syntax: '#{x}'"
    exit
  end
  