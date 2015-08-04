# ch01 The Book of Ruby - http://www.sapphiresteel.com

# define Thing class and some methods.
class Thing
  # rubocop says
  # Use attr_writer to define trivial writer methods.
  def create_name(aName)
    @name = aName
  end
  # rubocop says
  # Use attr_reader to define trivial reader methods.
  def use_name
    @name
  end
end

# define Treasure class and some methods.
class Treasure
  def initialize(aName, aDescription)
    @name         = aName
    @description  = aDescription
  end

  def to_s # override default to_s method
    "The #{@name} Treasure is #{@description}\n"
  end
end

thing1 = Thing.new
thing1.set_name('A lovely Thing')
puts thing1.get_name

t1 = Treasure.new('Sword', 'an Elvish weapon forged of gold')
t2 = Treasure.new('Ring', 'a magic ring of great power')
puts t1.to_s
puts t2.to_s
# The inspect method lets you look inside an object
puts "Inspecting 1st treasure: #{t1.inspect}"
