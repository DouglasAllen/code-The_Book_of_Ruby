```ruby
# The Book of Ruby - http://www.sapphiresteel.com

# top-level module documentation comment.
module MyModule
  REWARD = 100

  def prize
    "You've won #{REWARD} credits"
  end

  def self.lose
    "Sorry, you didn't win"
  end
end

puts(MyModule.lose)
# These won't work"
# puts( prize )
# puts( MyModule.prize )

```