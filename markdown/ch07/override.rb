# ch07 The Book of Ruby - http://www.sapphiresteel.com

#
class MyClass
  def sayHello
    'Hello from MyClass'
  end

  def sayGoodbye
    'Goodbye from MyClass'
  end
end

#
class MyOtherClass < MyClass
  # overrides (and replaces) MyClass.sayHello
  def sayHello
    'Hello from MyOtherClass'
  end

  # overrides MyClass.sayGoodbye but first calls that method
  # with super. So this version "adds to" MyClass.sayGoodbye
  def sayGoodbye
    super << ' and also from MyOtherClass'
  end
  # overrides default to_s method
  def to_s
    "I am an instance of the #{self.class} class"
  end
end

myclassob = MyClass.new
myotherclassob  = MyOtherClass.new

puts(myclassob.sayHello)
puts(myclassob.sayGoodbye)
puts(myclassob.to_s)

puts(myotherclassob.sayHello)
puts(myotherclassob.sayGoodbye)
puts(myotherclassob.to_s)
