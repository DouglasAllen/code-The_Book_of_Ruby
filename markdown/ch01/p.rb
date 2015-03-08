```ruby
# ch01 The Book of Ruby - http://www.sapphiresteel.com

# Create new class
class Treasure
  def initialize(aName, aDescription)
    @name         = aName
    @description  = aDescription
  end

  # override default to_s method
  def to_s
    "The #{@name} Treasure is #{@description}\n"
  end
end

a = 'hello'
b = 123
c = Treasure.new('ring', 'a glittery gold thing')

p(a)
p(b)
p(c)
```