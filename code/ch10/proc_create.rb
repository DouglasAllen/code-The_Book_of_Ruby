# The Book of Ruby - http://www.sapphiresteel.com

a = proc { |x| x *= 10; puts(x) }
b = ->(x) { x *= 10; puts(x) }
c = proc { |x| x.capitalize! }

puts(a.class)
puts(b.class)
puts(c.class)
