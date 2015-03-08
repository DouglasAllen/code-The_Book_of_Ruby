```ruby
# ch01 The Book of Ruby - http://www.sapphiresteel.com

# Create Dog class and use instance variables such as @myname
class Dog
  # Rubocop says:
  # Use attr_writer to define trivial writer methods.
  # Do not prefix writer method names with set_.
  #
  def set_name(aName)
    @myname = aName
  end
  # Rubocop says:
  # Use attr_reader to define trivial reader methods.
  # Do not prefix reader method names with get_.
  #
  def get_name
    @myname
  end

  def talk
    'woof!'
  end
end

# Create Cat class and use instance variables such as @myname
class Cat
  # Rubocop says:
  # Use attr_writer to define trivial writer methods.
  # Do not prefix writer method names with set_.
  #
  def set_name(aName)
    @myname = aName
  end
  # Rubocop says:
  # Use attr_reader to define trivial reader methods.
  # Do not prefix reader method names with get_.
  #
  def get_name
    @myname
  end

  def talk
    'miaow!'
  end
end

# --- Create instances (objects) of the Dog and Cat classes
mydog = Dog.new
yourdog = Dog.new
mycat = Cat.new
yourcat = Cat.new
someotherdog = Dog.new

# --- Name them
mydog.set_name('Fido')
yourdog.set_name('Bonzo')
mycat.set_name('Tiddles')
yourcat.set_name('Flossy')

# --- Get their names and display them
# Dogs
puts(mydog.get_name)
puts(yourdog.get_name)
# hmmm, but what happens here if the dog has no name?
puts(someotherdog.get_name)
# Cats
puts(mycat.get_name)
puts(yourcat.get_name)

# --- Ask them to talk
puts(mydog.talk)
puts(yourdog.talk)
puts(mycat.talk)
puts(yourcat.talk)
```