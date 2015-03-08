# The Book of Ruby - http://www.sapphiresteel.com

f = Fiber.new do |s|
  puts('In Fiber #1 (a) : ' +  s)
  puts('In Fiber #1 (b) : ' +  s)
  Fiber.yield
  puts('In Fiber #1 (c) : ' +  s)
end

f2 = Fiber.new do |s|
  puts('In Fiber #2 (a) : ' +  s)
  puts('In Fiber #2 (b) : ' +  s)
  Fiber.yield
  puts('In Fiber #2 (c) : ' +  s)
end

f.resume('hello')
f2.resume('hi')
puts('world')
f2.resume
f.resume
