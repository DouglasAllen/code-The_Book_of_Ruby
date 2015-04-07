```ruby
# The Book of Ruby - http://www.sapphiresteel.com

def fac(n)
  n == 1 ? 1 : n * fac(n - 1)
end

startTime = Time.new
puts('Start: %10.5f' % startTime)

t1 = Thread.new do
  0.upto(50) { fac(50); print("t1\n") }
end

t2 = Thread.new do
  0.upto(50) { fac(50); print("t2\n") }
end

t3 = Thread.new do
  0.upto(50) { fac(50); print("t3\n") }
end

# ==== TRY CHANGING THESE PRIORITIES ====
t1.priority = 0
t2.priority = 0
t3.priority = 0
# =======================================

[t1, t2, t3].each(&:join)

endTime = Time.new
puts('End: %10.5f' % endTime.to_f)
totalTime = endTime - startTime
puts('Total Time: %10.5f' % totalTime.to_f)

```