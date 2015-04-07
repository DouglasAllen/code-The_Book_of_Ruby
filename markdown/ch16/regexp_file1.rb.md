```ruby
# The Book of Ruby - http://www.sapphiresteel.com

# create new file with C-style line comments
File.open('testfile1.txt', 'w')do |f|
  File.foreach('regex1.rb')do |line|
    f.puts(line.sub(/(^\s*)#(.*)/, '\1//\2'))
  end
end

puts('Done')

```