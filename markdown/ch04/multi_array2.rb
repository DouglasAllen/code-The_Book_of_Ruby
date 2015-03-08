# ch04 The Book of Ruby - http://www.sapphiresteel.com

# create an array with two sub-arrays - i.e. 2 'rows' each with 4 elements
# multiarr[0] = %w(one two three four)
# multiarr[1] = [1, 2, 3, 4]
multiarr = [%w(one two three four),
            [1, 2, 3, 4]]

# iterate over each element in each specific 'row' of multiarr
puts("\nfor..in..end (multi-dimensional array)")

# 'row' 0 is the first 'sub-array' : ['one','two','three','four']
for s in multiarr[0]
  puts(s)
end

# 'row' 1 is the second 'sub-array' : [1,2,3,4]
for s in multiarr[1]
  puts(s)
end

# iterate over each element using nested for loops
puts("\nNested for loops...")
for row  in multiarr
  for item in row
    puts(item)
  end
end
