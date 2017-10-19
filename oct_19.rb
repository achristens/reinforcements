require 'pp'
seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]
 # pp seats[0]
# Display the list of available seats to your user, like so:
# Row 1 seat 1 is free.
# Row 1 seat 3 is free.
# Row 1 seat 4 is free.
# Row 2 seat 2 is free.
# Row 3 seat 3 is free.
# Row 3 seat 4 is free.

# seats.each_with_index do |seat, row|
#   if seat == nil
#     puts "Row #{row} seat #{seat} is free."
#   end
# end

seats.each_with_index do |row, i|
  row.each_with_index do |seat, j|
    if seat == nil
      pp "Row #{i+1} seat #{j+1} is free."
    end
  end
end


# row.each_with_index |seat|
# if seat == nil
#   puts "Row #{row} seat #{seat} is free."
# end
