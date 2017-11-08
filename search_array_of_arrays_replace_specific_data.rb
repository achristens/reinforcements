require 'pp'
seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]
 
# Display the list of available seats to your user, like so:
# Row 1 seat 1 is free.
# Row 1 seat 3 is free.
# Row 1 seat 4 is free.
# Row 2 seat 2 is free.
# Row 3 seat 3 is free.
# Row 3 seat 4 is free.

seats.each_with_index do |row, i|
  row.each_with_index do |seat, position|
    if seat == nil
      pp "Row #{ i + 1 } seat #{ position + 1 } is free. Do you want to sit there? (y/n)"
      user_answer = gets.chomp
      if user_answer == 'y'
        pp "What is your name?"
        user_name = gets.chomp
        seats[i][position] = user_name
      end
    end
  end
end
pp seats
