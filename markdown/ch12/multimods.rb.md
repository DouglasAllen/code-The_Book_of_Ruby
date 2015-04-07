```ruby
# The Book of Ruby - http://www.sapphiresteel.com
# This is an example how how *not* to use modules
# Here we have mixed modules and classes in a way which
# makes their dependency and scoping impenetrably difficult
# to follow - which just goes to show that, while
# mixin modules can help to avoid complexity, it all depends
# on how they are used!

# module
module MagicThing
  attr_reader :m_power

  attr_writer :m_power

  # class inside module
  class MagicClass
    attr_accessor :woofledust
  end
end

# module
module Treasure
  attr_accessor :value
  attr_accessor :insurance_cost
end

#
module MetalThing
  attr_accessor :type_of_metal
  # This includes module MagicThing and subclasses
  include MagicThing
  # class Attributes from a class inside module MagicThing
  class Attributes < MagicClass
    attr_accessor :hardness
    attr_accessor :shininess
  end
end

# includes module MetalThing withing scope of main program
include MetalThing
# class Weapon subclassed from MagicClass which is in module
class Weapon < MagicClass
  # MagicThing which is included in module MetalThing
  attr_accessor :deadliness
  attr_accessor :power
  # subclasses WeaponAttributes from class Attributes
  class WeaponAttributes < Attributes
    # in module MetalThing which is itself subclassed
    # from class MagicClass inside module MagicThing
    attr_accessor :nastiness
  end
end

# class Sword subclassed from Weapon which is subclassed
class Sword < Weapon
  # modules Treasure and MagicThing included
  include Treasure
  include MagicThing

  attr_accessor :name
end

s = Sword.new
s.name = 'Excalibur'
s.deadliness = 10
s.power = 20
s.value = 500
s.insurance_cost = 10_000
s.m_power = 'incredibly magical'
s.woofledust = 'lots of it'
weapon_atts = Weapon::WeaponAttributes.new
weapon_atts.nastiness = 'very nasty'
weapon_atts.hardness = 'terribly hard'
weapon_atts.shininess = 'like a mirror'

puts(s.name)
puts(s.deadliness)
puts(s.power)
puts(s.value)
puts(s.insurance_cost)
puts(s.m_power)
puts(s.woofledust)
puts(weapon_atts.nastiness)
puts(weapon_atts.hardness)
puts(weapon_atts.shininess)

```