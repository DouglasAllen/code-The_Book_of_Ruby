# The Book of Ruby - http://www.sapphiresteel.com

#
module MyModule
  GOODMOOD = 'happy'
  BADMOOD = 'grumpy'

  def greet
    "I'm #{GOODMOOD}. How are you?"
  end

  def self.greet
    "I'm #{BADMOOD}. How are you?"
  end
end

#
class MyClass
  include MyModule

  def sayHi
    puts(greet)
  end
end

ob = MyClass.new
ob.sayHi
puts(ob.greet)
