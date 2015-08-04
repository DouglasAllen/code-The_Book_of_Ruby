# ch03 The Book of Ruby - http://www.sapphiresteel.com

# examples of a few string methods

s = 'Hello world'

s = "
Now is the winter of our discontent
Made glorious summer by this sun of York;
And all the clouds that lour'd upon our house
In the deep bosom of the ocean buried."

print('--- s ---')
puts(s)
puts
puts('--- s.length ---')
puts(s.length)
puts
# notice final ! in method name: this changes s itself
puts('--- s.reverse! ---')
puts(s.reverse!)
puts
# creates new string object s
print('--- s.reverse ---')
s = s.reverse
puts(s)
puts
print('--- s.upcase ---')
s = s.upcase
puts(s)
puts
# set initial char to upcase, rest to lowercase
print('--- s.capitalize ---')
s = s.capitalize
puts(s)
puts
print('--- s.swapcase ---')
s = s.swapcase
puts(s)
puts
print('--- s.downcase ---')
s = s.downcase
puts(s)
puts
# insert substring at index
print('--- s.insert(7, "NOT " ) ---')
s = s.insert(7, 'NOT ')
puts(s)
puts
# remove repeating chars -e.g. "xx   yy" becomes "x y"
print('--- s.squeeze ---')
s = s.squeeze
puts(s)
puts
# create an array of substrings
puts('--- s.split ---')
s = s.split
print(s)
