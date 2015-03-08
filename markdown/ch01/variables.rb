```ruby
# ch01 The Book of Ruby - http://www.sapphiresteel.com

localvar = 'hello'
# rubocop says
# Do not introduce global variables.
$globalvar = 'goodbye'

def amethod
  localvar = 10
  puts(localvar)
  # rubocop says
  # Do not introduce global variables.
  puts($globalvar)
end

# rubocop says
# Use snake_case for method names.
def anotherMethod
  localvar = 500
  # rubocop says
  # Do not introduce global variables.
  $globalvar = 'bonjour'
  puts(localvar)
  # rubocop says
  # Do not introduce global variables.
  puts($globalvar)
end

amethod
puts
anotherMethod
puts
amethod
puts
puts(localvar)
# rubocop says
# Do not introduce global variables.
puts($globalvar)
```