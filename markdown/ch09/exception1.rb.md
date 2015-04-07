```ruby
# ch09 The Book of Ruby - http://www.sapphiresteel.com

begin
  x = 1 / 0
rescue Exception
  x = 0
  puts($ERROR_INFO.class)
  puts($ERROR_INFO)
end

puts(x)

```