# The Book of Ruby - http://www.sapphiresteel.com

# This fails

ob = Object.new

# singleton class
class << ob
  def xxx(aStr)
    @x = aStr
  end
end

ob.xxx('hello')
p(ob)

File.open('test.sav', 'w')do |f|
  Marshal.dump(ob, f)
end

File.open('test.sav')do |f|
  ob = Marshal.load(f)
end

p(ob)
