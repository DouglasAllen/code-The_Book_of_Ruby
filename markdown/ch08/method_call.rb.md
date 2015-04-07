```ruby
# ch08 The Book of Ruby - http://www.sapphiresteel.com

def nochange(x)
  x
end

num = 10
puts("num.object_id=#{num.object_id}")
num = nochange(num)
puts("num.object_id=#{num.object_id}")

```