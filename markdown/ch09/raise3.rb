# ch09 The Book of Ruby - http://www.sapphiresteel.com

#
class NoNameError < Exception
  def to_str
    'No Name given!'
  end
end

def sayHello(aName)
  if (aName == '') || (aName.nil?)
    fail NoNameError
  end
rescue Exception => e
  puts(e.class)
  puts('error message: ' + e.to_s)
  puts(e.backtrace)
else
  puts("Hello #{aName}")
end

sayHello(nil)
