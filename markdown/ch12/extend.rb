# The Book of Ruby - http://www.sapphiresteel.com

# top-level module documentation comment.
module A
  def method_a
    puts('hello from a')
  end
end

# top-level module documentation comment.
module B
  def method_b
    puts('hello from b')
  end
end

# top-level module documentation comment.
module C
  def mymethod
    puts('hello from mymethod of module C')
  end
end

# top-level module documentation comment.
module D
  def method_d
    puts('hello from d')
  end
end

# top-level class documentation comment
class MyClass
  def mymethod
    puts('hello from mymethod of class MyClass')
  end
end

ob = MyClass.new
ob.mymethod

ob.extend(A)

ob.method_a

ob.extend(B, C)

ob.method_b
ob.mymethod

ob.freeze

if !(ob.frozen?)
  ob.extend(D)
  ob.method_d
else
  puts("Can't extend a frozen object")
end
