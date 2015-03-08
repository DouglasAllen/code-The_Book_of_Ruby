# The Book of Ruby - http://www.sapphiresteel.com

FILENAME = 'test2.sav'

# top-level class documentation comment.
class X
  def marshal_dump
    [@x]
  end

  def marshal_load(data)
    @x = data[0]
  end
end

def makeIntoSingleton(someOb)
  class << someOb
    def xxx=(aStr)
      @x = aStr
    end

    def xxx
      @x
    end
  end
  someOb
end

ob = X.new

if File.exist?(FILENAME)
  File.open(FILENAME)do |f|
    ob = Marshal.load(f)
  end
else
  puts("Saved data can't be found")
end

p(ob)

ob = makeIntoSingleton(ob)

if	ob.xxx == 'hello'
  ob.xxx = 'goodbye'
else
  ob.xxx = 'hello'
end

File.open(FILENAME, 'w')do |f|
  Marshal.dump(ob, f)
end

p(ob)
puts(ob.xxx)
