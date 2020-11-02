class Lexer
macro
  BLANK         [\ \t\n\r\b]+

rule
  {BLANK}       # no action
  \d+           { [:INTEGER, text.to_i] }
  \.            { [:PRINT, text] }
  \/            { [:INDEX, text] }
  .             { [text, text] }

inner
  def tokenize(code)
    scan_setup(code)
    tokens = []
    while token = next_token
      tokens << token
    end
    tokens
  end
end
