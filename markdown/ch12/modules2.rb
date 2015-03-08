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

include MyModule
puts(greet)
puts(MyModule.greet)
