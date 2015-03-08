# ch08 The Book of Ruby - http://www.sapphiresteel.com

# parentheses avoid ambiguity...

greet = 'Hello'
name = 'Fred'

def greet
  'Good morning'
end

def name
  'Mary'
end

def sayHi(aName)
  "Hi, #{aName}"
end

puts(greet)
puts greet
puts greet
puts(sayHi(name))
puts(sayHi(name))
