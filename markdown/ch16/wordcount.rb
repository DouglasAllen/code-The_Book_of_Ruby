# The Book of Ruby - http://www.sapphiresteel.com

count = 0
File.foreach('regex1.rb')do |line|
  count += line.scan(/[a-z0-9A-Z]+/).size
end

puts("There are #{count} words in this file.")
