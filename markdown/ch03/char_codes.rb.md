```ruby
# ch03 The Book of Ruby - http://www.sapphiresteel.com

# Display chars with codes 0 to 126

i = 0
begin
  s = '[' << i << ':' << i.to_s << ']'
  puts(s)
  i += 1
end until i == 126

# or
(0..126).each { |i| puts '[' << i << ':' << i.to_s << ']' }

```