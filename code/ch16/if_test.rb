# The Book of Ruby - http://www.sapphiresteel.com

RegEx = /def/
Str1  = 'abcdef'
Str2  = 'ghijkl'

if RegEx =~ Str1
  puts('true')
else
  puts('false')
end

if RegEx =~ Str2
  puts('true')
else
  puts('false')
end
