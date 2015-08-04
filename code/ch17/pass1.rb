# The Book of Ruby - http://www.sapphiresteel.com

a = Thread.new do
  print 'a'
  print 'b'
  print 'c'
end
b = Thread.new do
  print 'x'
  print 'y'
  print 'z'
end
a.join
b.join
