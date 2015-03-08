# ch08 The Book of Ruby - http://www.sapphiresteel.com

def change(x)
  x += 1
  x
end

num = 10
puts("num.object_id=#{num.object_id}")
num = change(num)
puts("num.object_id=#{num.object_id}")
