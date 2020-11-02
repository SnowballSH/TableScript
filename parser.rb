#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.5.0
# from Racc grammar file "".
#

require 'racc/parser.rb'

  require "#{File.dirname(__FILE__)}/lexer.rb"
  require "#{File.dirname(__FILE__)}/nodes.rb"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y.rb/module_eval...', 'grammar.y.rb', 41)
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
  
...end grammar.y.rb/module_eval...
##### State transition tables begin ###

racc_action_table = [
     4,     5,    17,     6,     7,    18,     8,     4,     5,    10,
     6,     7,    16,     8,     4,     5,     9,     6,     7,    15,
     8,     4,     5,    10,     6,     7,    10,     8,     4,     5,
    10,     6,     7,   nil,     8,    19 ]

racc_action_check = [
     0,     0,    13,     0,     0,    13,     0,    18,    18,    12,
    18,    18,    10,    18,     8,     8,     1,     8,     8,     9,
     8,     5,     5,     3,     5,     5,    20,     5,     7,     7,
    14,     7,     7,   nil,     7,    14 ]

racc_action_pointer = [
    -2,    16,   nil,    19,   nil,    19,   nil,    26,    12,    19,
    10,   nil,     5,    -5,    26,   nil,   nil,   nil,     5,   nil,
    22 ]

racc_action_default = [
    -1,   -13,    -2,    -3,    -4,   -13,    -7,   -10,   -13,   -13,
   -13,    -5,   -12,   -13,   -13,    21,    -6,    -8,   -13,    -9,
   -11 ]

racc_goto_table = [
     3,     2,    13,     1,   nil,    11,   nil,    12,    14,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    20 ]

racc_goto_check = [
     3,     2,     4,     1,   nil,     3,   nil,     3,     3,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     3 ]

racc_goto_pointer = [
   nil,     3,     1,     0,    -5 ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 12, :_reduce_1,
  1, 12, :_reduce_2,
  1, 13, :_reduce_3,
  1, 14, :_reduce_4,
  2, 14, :_reduce_5,
  3, 14, :_reduce_6,
  1, 14, :_reduce_7,
  3, 14, :_reduce_8,
  3, 14, :_reduce_9,
  0, 15, :_reduce_10,
  3, 15, :_reduce_11,
  1, 15, :_reduce_12 ]

racc_reduce_n = 13

racc_shift_n = 21

racc_token_table = {
  false => 0,
  :error => 1,
  :INTEGER => 2,
  :PRINT => 3,
  :INDEX => 4,
  "@" => 5,
  "{" => 6,
  "}" => 7,
  "(" => 8,
  ")" => 9,
  "," => 10 }

racc_nt_base = 11

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "INTEGER",
  "PRINT",
  "INDEX",
  "\"@\"",
  "\"{\"",
  "\"}\"",
  "\"(\"",
  "\")\"",
  "\",\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Table" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y.rb', 12)
  def _reduce_1(val, _values, result)
     result = Nodes.new([])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 13)
  def _reduce_2(val, _values, result)
     result = Nodes.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 17)
  def _reduce_3(val, _values, result)
     result = val
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 21)
  def _reduce_4(val, _values, result)
     result = LitInteger.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 22)
  def _reduce_5(val, _values, result)
     result = PrintNode.new(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 23)
  def _reduce_6(val, _values, result)
     result = IndexNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 24)
  def _reduce_7(val, _values, result)
     result = SelfNode.new
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 25)
  def _reduce_8(val, _values, result)
     result = TableNode.new(val[1])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 26)
  def _reduce_9(val, _values, result)
     result = val[1]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 30)
  def _reduce_10(val, _values, result)
     result = []
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 31)
  def _reduce_11(val, _values, result)
     result = val[0] << val[2]
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y.rb', 32)
  def _reduce_12(val, _values, result)
     result = [val[0]]
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
