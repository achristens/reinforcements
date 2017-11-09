  require 'httparty'

list_of_words = []

word = ''
10.times do
  word = HTTParty.get('http://setgetgo.com/randomword/get.php')
  word = word.parsed_response
  list_of_words << word
end

puts list_of_words
