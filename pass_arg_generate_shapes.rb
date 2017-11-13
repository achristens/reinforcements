hash = { rows: 4, cols: 4, char: '*'}
second_hash = { rows: 3, cols: 9, char: '0'}

def draw_shape(options)
  shape = ""

  options[:rows].times do |r|
    options[:cols].times do |c|
      shape += options[:char]
    end
    shape += "\n"
  end

  return shape

end

puts draw_shape(hash)
puts draw_shape(second_hash)
