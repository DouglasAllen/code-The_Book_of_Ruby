# The Book of Ruby - http://www.sapphiresteel.com

words = %w(hello world goodbye mars)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

startTime = Time.new
puts('Start: %10.9f' % startTime)

Thread.new do
  words.each { |word| puts(word) }
end

Thread.new do
  numbers.each { |number| puts(number) }
end

sleep(5)

endTime = Time.new
puts('End: %10.9f' % endTime.to_f)
totalTime = endTime - startTime
puts('Total Time: %10.9f' % totalTime.to_f)
