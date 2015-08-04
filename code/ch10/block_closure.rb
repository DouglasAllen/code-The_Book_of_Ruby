# The Book of Ruby - http://www.sapphiresteel.com

x = 'hello world'

ablock = proc { puts(x) }

def aMethod(aBlockArg)
  x = 'goodbye'
  aBlockArg.call
end

puts(x)
ablock.call
aMethod(ablock)
ablock.call
puts(x)
