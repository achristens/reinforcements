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

puts draw_shape(your_code_goes_here)


hash = { rows: 4, cols: 4, char: '*'}
