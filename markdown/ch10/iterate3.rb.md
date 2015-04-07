```ruby
# The Book of Ruby - http://www.sapphiresteel.com

multiarr =
  [%w(one two three four),
   [1, 2, 3, 4],
   [:a, :b, :c, :d]
  ]

# compare with iteration techniques in multi_array.rb (ch4)

# works with any number of items but a fixed number (2) of arrays
puts('===== 1 =====')
multiarr[0].length.times do|i|
  puts(multiarr[0][i], multiarr[1][i])
end

# iterate through all the arrays,
# printing each array item in sequence
# works with any number of arrays and any number of items
puts('===== 2 =====')
multiarr.each do |arr|
  multiarr[0].length.times do|i|
    puts(arr[i])
  end
end

# iterate through each item index,
# printing the item at that index from each array
# works with any number of arrays and any number of items
puts('===== 3 =====')
multiarr[0].length.times do|i|
  multiarr.each do |arr|
    puts(arr[i])
  end
end

```