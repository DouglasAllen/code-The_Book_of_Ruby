```ruby
# ch05 The Book of Ruby - http://www.sapphiresteel.com

puts('--- loop #1 ---')
[1, 2, 3].each  do |i|
  puts(i)
end

puts('--- loop #3 ---')
%w(one two three).each do |s|
  puts(s)
end

puts('--- loop #3 ---')
[1, 'two', [3, 4, 5]].each { |x| puts(x) }

```