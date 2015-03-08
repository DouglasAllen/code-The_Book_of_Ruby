# ch02 The Book of Ruby - http://www.sapphiresteel.com

# illustrates how to read and write instance variables
# using accessor methods

#
class Thing
  def initialize(aName, aDescription)
    @name	 = aName
    @description = aDescription
  end

  # get accessor for @name
  attr_reader :name

  # set accessor for @name
  attr_writer :name

  # get accessor for @description
  attr_reader :description

  # set accessor for @description
  attr_writer :description
end

t = Thing.new('The Thing', 'a lovely, glittery wotsit')
print(t.name)
print(' is ')
puts(t.description)
t.name = 'A Refurbished Thing'
t.description = 'a bit faded and worn around the edges'
print('It has now changed its name to ')
puts(t.name)
print('I would describe it as ')
puts(t.description)
