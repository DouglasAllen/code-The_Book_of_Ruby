```ruby
# ch05 The Book of Ruby - http://www.sapphiresteel.com

# --- Example 1 ---
# i) for
for s in %w(one two three) do
  puts(s)
end

# ii) each
%w(one two three).each do |s|
  puts(s)
end

# --- Example 2 ---
# i) for
for x in [1, 'two', [3, 4, 5]] do puts(x) end

# ii) each
[1, 'two', [3, 4, 5]].each { |x| puts(x) }

```