```ruby
# The Book of Ruby - http://www.sapphiresteel.com

f = File.open('friends.sav', 'w')
Marshal.dump(%w(fred bert mary), f)
f.close

File.open('morefriends.sav', 'w')do |friendsfile|
  Marshal.dump(%w(sally agnes john), friendsfile)
end

File.open('morefriends.sav')do |mf|
  $arr = Marshal.load(mf)
end

myfriends = Marshal.load(File.open('friends.sav'))
morefriends = Marshal.load(File.open('morefriends.sav'))

p(myfriends)
p(morefriends)
p($arr)

```