# The Book of Ruby - http://www.sapphiresteel.com

# Ruby 1.8 only
arr = []

t1 = Thread.new do
  Thread.stop
  (1..10).each do
    arr << Thread.current.to_s
    Thread.pass
  end
end

t2 = Thread.new do
  Thread.stop
  (1..10).each do |_i|
    arr << Thread.current.to_s
    Thread.pass
  end
end

puts('Starting threads...')
t1.run
t2.run
t1.join
t2.join
puts(arr)
