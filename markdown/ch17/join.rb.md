```ruby
# The Book of Ruby - http://www.sapphiresteel.com

words = %w(hello world goodbye mars)
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

Thread.new do
  words.each { |word| puts(word) }
end.join

Thread.new do
  numbers.each { |number| puts(number) }
end.join

```