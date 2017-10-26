# print "lowercase" if the string is all lowercase
# print "long" if the string is more than 4 characters
# print "long and lowercase" if the string's length is more than 4 characters and it's all lowercase
# otherwise print the string itself
# The output should be:
#
# long
# lowercase
# lowercase
# lowercase
# long
# lowercase
# EX
# EST
# long and lowercase

words = ["Totam", "ut", "odit","quis", "Maiores", "unde", "EX", "EST", "corporis"]

def check_string(array)
  array.each do | word |
    # print "long and lowercase" if the string's length is more than 4 characters and it's all lowercase
    if word == word.downcase && word.length > 4
      puts "long and lowercase"
    # print "lowercase" if the string is all lowercase
    elsif word == word.downcase
      puts "lowercase"
    # print "long" if the string is more than 4 characters
    elsif word.length > 4
      puts "long"
    else
    # otherwise print the string itself
      puts word
    end
  end
end

check_string(words)
