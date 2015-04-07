```ruby
# The Book of Ruby - http://www.sapphiresteel.com

require 'thread'

$i = 0
semaphore = Mutex.new

def addNum(aNum)
  aNum + 1
end

somethreads = (1..3).collect do
  Thread.new do
    semaphore.synchronize do
      1_000_000.times { $i = addNum($i)  }
    end
  end
end

somethreads.each(&:join)
puts($i)

```