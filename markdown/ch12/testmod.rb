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

  def sayHi
    greet
  end

  def sayHiAgain
    MyModule.greet
  end
end

def sing
  puts('Tra-la-la-la-la....')
end

puts('module loaded')
sing
