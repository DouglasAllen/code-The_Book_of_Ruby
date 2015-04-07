```ruby
# The Book of Ruby - http://www.sapphiresteel.com

f = File.new('myfile.txt', 'w')
f.puts('I', 'wandered', 'lonely', 'as', 'a', 'cloud')
f.close

charcount = 0
linecount = 0

f = File.new('myfile.txt', 'r')
until  f.eof
  c = f.getc
  if (c.ord == 10)
    linecount += 1
    puts(" <End Of Line #{linecount}>")
  else
    putc(c)
    charcount += 1
  end
end

if f.eof
  puts('<End Of File>')
end

f.close

puts("This file contains #{linecount} lines and #{charcount} characters.")

```