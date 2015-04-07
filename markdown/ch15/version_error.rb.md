```ruby
# The Book of Ruby - http://www.sapphiresteel.com

f = File.open('friends.sav', 'w')
x = Marshal.dump(%w(fred bert mary), f)
f.close
p(f)

# p( x[0] ) # error

File.open('friends.sav') do |fm|
  x = Marshal.load(fm)
end

puts(x[0])
puts(x[1])

```