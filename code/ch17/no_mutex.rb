# The Book of Ruby - http://www.sapphiresteel.com

$i = 0

def addNum(aNum)
  aNum + 1
end

somethreads = (1..3).collect do
  Thread.new do
    1_000_000.times { $i = addNum($i)  }
  end
end

somethreads.each(&:join)
puts($i)
