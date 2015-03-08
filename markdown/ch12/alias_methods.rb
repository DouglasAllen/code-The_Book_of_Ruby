# The Book of Ruby - http://www.sapphiresteel.com

#
module Happy
  def self.mood
    'happy'
  end

  def expression
    'smiling'
  end
  alias_method :happyexpression, :expression
end

#
module Sad
  def self.mood
    'sad'
  end

  def expression
    'frowning'
  end
  alias_method :sadexpression, :expression
end

#
class Person
  include Happy
  include Sad
  attr_accessor :mood
  def initialize
    @mood = Happy.mood
  end
end

p2 = Person.new
puts(p2.mood)
puts(p2.expression)
puts(p2.happyexpression)
puts(p2.sadexpression)
