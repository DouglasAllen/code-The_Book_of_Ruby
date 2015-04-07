```ruby
# The Book of Ruby - http://www.sapphiresteel.com

# top-level class documentation comment.
class X
  def marshal_dump
    [@x]
  end

  def marshal_load(data)
    @x = data[0]
  end
end

ob = X.new

class << ob
  def xxx(aStr)
    @x = aStr
  end
end

ob.xxx('hello')
p(ob)

File.open('test2.sav', 'w')do |f|
  Marshal.dump(ob, f)
end

ob.xxx('new string')
p(ob)

File.open('test2.sav')do |f|
  ob = Marshal.load(f)
end

p(ob)
# ob.xxx( "this fails" )

```