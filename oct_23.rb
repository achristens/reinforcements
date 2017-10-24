require 'pry'
def check_syntax(str)
  openables = {
    "(" => ")",
    "[" => "]",
    "{" => "}",
    "<" => ">"
  }
  open = []
  opening_chars = openables.keys
  closing_chars = openables.values

  str.each_char do |char|

    if opening_chars.include?(char) # opening bracket

      open << char

    elsif closing_chars.include?(char) # closing bracket

      required_char = openables[open.last]

      if char == required_char # it's the right kind of closing bracket

        open.pop

      else

        if open.any? # it's the wrong kind of closing bracket
          puts "* You have a syntax error: there is an unexpected #{char} where there should be a #{required_char}"

        else # there's nothing to close
          puts "* You have a syntax error: there is an unexpected #{char} where there is nothing to close."
        end

        return false

      end

    end
  end

  if open.any?
    required_char = openables[open.first]
    puts "* You have a syntax error: the string ended without a closing #{required_char}"

  end

  return open.empty?
end

# puts check_syntax("(this)[] is some text")
# puts "*****"
# puts check_syntax("(this)] is some text")
# puts "*****"
# puts check_syntax("[(this] is some text")
# puts "*****"
# puts check_syntax("[this][ is some text")
# puts "*****"
# puts check_syntax("[this] is some text")
# The output should currently look like this:
#
# true
# *****
# * You have a syntax error: there is an unexpected ] where there is nothing to close.
# false
# *****
# * You have a syntax error: there is an unexpected ]
# false
# *****
# * You have a syntax error: the string ended without a closing ]
# false
# *****
# true


# EXERCISE 2
# THE CORRECT VARIABLE THAT NEEDS TO BE PASSED IN FOR THIS IS char. IT CONTAINS ]. FIND A WAY TO MAKE IT A LOCAL VARIABLE IN THE FINAL IF STATEMENT.

# Modify the code to make it work for angled brackets (< and >) as well.
#
# The new output for these strings containing angled brackets should look like this:
#
puts check_syntax("<html> (this)[] is some text</html>")
# true
puts check_syntax("<html> (this)] is some text</html>")
# * You have a syntax error: there is an unexpected ] where there is nothing to close.
# false
puts check_syntax("<html> [(this] is some text</html>")
# * You have a syntax error: there is an unexpected ] where there should be a )
# false
puts check_syntax("<html> [this][ is some text</html")
# * You have a syntax error: the string ended without a closing ]
# false
puts check_syntax("<html> [this] is some text</html")
# * You have a syntax error: the string ended without a closing >
# false
