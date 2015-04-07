```ruby
# The Book of Ruby - http://www.sapphiresteel.com

require 'yaml'

f = File.open('friends.yml', 'w')
YAML.dump(%w(fred bert mary), f)
f.close

File.open('morefriends.yml', 'w') do |friendsfile|
  YAML.dump(%w(sally agnes john), friendsfile)
end

File.open('morefriends.yml') do |mf|
  $arr = YAML.load(mf)
end

myfriends = YAML.load(File.open('friends.yml'))
morefriends = YAML.load(File.open('morefriends.yml'))
puts(myfriends)
puts
puts(morefriends)
puts
p($arr)

```