```ruby
# The Book of Ruby - http://www.sapphiresteel.com

a = Thread.new do
  print 'a'; Thread.pass
  print 'b'; Thread.pass
  print 'c'
end
b = Thread.new do
  print 'x'; Thread.pass
  print 'y'; Thread.pass
  print 'z'
end
a.join
b.join

```