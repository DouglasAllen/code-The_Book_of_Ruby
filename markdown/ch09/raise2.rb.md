```ruby
# ch09 The Book of Ruby - http://www.sapphiresteel.com

begin
  fail
rescue Exception => e
  puts(e.class)
  puts('message: ' + e.to_s)
end

puts

begin
  fail 'An unknown exception just occurred!'
rescue Exception => e
  puts(e.class)
  puts('message: ' + e .to_s)
end

puts

begin
  fail ZeroDivisionError
rescue Exception => e
  puts(e.class)
  puts('message: ' + e.to_s)
end

puts

begin
  fail ZeroDivisionError.new("I'm afraid you divided by Zero")
rescue Exception => e
  puts(e.class)
  puts('message: ' + e.to_s)
end

```