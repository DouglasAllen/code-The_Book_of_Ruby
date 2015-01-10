```ruby
# The Book of Ruby - http://www.sapphiresteel.com

puts("What shall we call this class? ")
class_name = gets.strip().capitalize() # make sure class name starts with capital letter
Object.const_set(class_name,Class.new) # create new class
puts("I'll give it a method called 'my_name'" )
class_name = Object.const_get(class_name)
class_name::module_eval{ define_method(:my_name){
puts("The name of my class is '#{self.class}'" ) }
}
x = class_name.new
x.my_name
```
